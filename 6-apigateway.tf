

# Create the IAM role with API Gateway as the trusted entity
resource "aws_iam_role" "apigateway_role" {
  name = "USTGenAI-APIGatewayLogsRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "apigateway.amazonaws.com"
        }
      }
    ]
  })
}

# Attach the managed policy to the IAM role
resource "aws_iam_role_policy_attachment" "apigateway_logs_policy" {
  role       = aws_iam_role.apigateway_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonAPIGatewayPushToCloudWatchLogs"
}

# Provides a settings of an API Gateway Account. 
resource "aws_api_gateway_account" "ustgenai_api_gateway_account" {
  cloudwatch_role_arn = aws_iam_role.apigateway_role.arn
}



# Defines the API Gateway REST API for static chat
resource "aws_api_gateway_rest_api" "ustgenai_private_rest_api" {
  name                         = "ustgenai-rest-api-private"
  api_key_source               = "HEADER"
  disable_execute_api_endpoint = false

  endpoint_configuration {
    types = ["PRIVATE"]
  }
}

# Creates an API key for the static chat API
resource "aws_api_gateway_api_key" "ustgenai_rest_api_key" {
  name        = "ustgenai-rest-api-key"
  description = "Managed by Terraform"
  enabled     = true
}

# Sets up the usage plan for the static chat API with throttling and quota settings
resource "aws_api_gateway_usage_plan" "ustgenai_rest_api_usage_plan" {
  name = "ustgenai-rest-api-usage-plan"

  throttle_settings {
    burst_limit = 5000 # Maximum burst requests per second
    rate_limit  = 1000 # Steady-state requests per second
  }

  quota_settings {
    limit  = 10000 # Daily request limit
    period = "DAY"
    offset = 0
  }

  api_stages {
    api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
    stage  = aws_api_gateway_stage.ustgenai_rest_api_stage.stage_name
  }
}

# Associates the API key with the usage plan
resource "aws_api_gateway_usage_plan_key" "ustgenai_rest_api_usage_plan_key" {
  key_type      = "API_KEY"
  usage_plan_id = aws_api_gateway_usage_plan.ustgenai_rest_api_usage_plan.id
  key_id        = aws_api_gateway_api_key.ustgenai_rest_api_key.id
}


# Deploys the static chat API
resource "aws_api_gateway_deployment" "ustgenai_rest_api_deployment" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id


  triggers = {
    redeployment = sha1(jsonencode({
      integrations = [
        aws_api_gateway_rest_api.ustgenai_private_rest_api,
        aws_api_gateway_resource.sandbox_users_resource,
        aws_api_gateway_resource.chat_history_resource,
        aws_api_gateway_method.chat_history_get_method
      ]
    }))
  }


  lifecycle {
    create_before_destroy = true
  }
}


# Creates a stage for the API deployment
resource "aws_api_gateway_stage" "ustgenai_rest_api_stage" {
  rest_api_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  deployment_id = aws_api_gateway_deployment.ustgenai_rest_api_deployment.id
  stage_name    = "dev"

  xray_tracing_enabled  = false # Disable X-Ray tracing
  cache_cluster_enabled = false # Disable cache cluster
}

# Configures method-level settings like throttling and logging for the stage
resource "aws_api_gateway_method_settings" "static_chat_method_settings" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  stage_name  = aws_api_gateway_stage.ustgenai_rest_api_stage.stage_name
  method_path = "*/*" # Applies settings to all methods in the stage

  settings {
    cache_ttl_in_seconds   = 300     # Cache time-to-live in seconds
    metrics_enabled        = true    # Enable CloudWatch metrics
    logging_level          = "ERROR" # Log only errors
    cache_data_encrypted   = true    # Encrypt cache data
    data_trace_enabled     = false   # Disable detailed request tracing
    throttling_burst_limit = 5000    # Method-level burst limit
    throttling_rate_limit  = 10000   # Method-level rate limit
  }
}

# Resource Policy

data "aws_iam_policy_document" "ustgenai_rest_api_resource_policy" {
  statement {
    sid       = ""
    effect    = "Allow"
    resources = ["arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:*/*"]
    actions   = ["execute-api:Invoke"]

    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}

resource "aws_api_gateway_rest_api_policy" "ustgenai_rest_api_policy" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  policy      = data.aws_iam_policy_document.ustgenai_rest_api_resource_policy.json
}