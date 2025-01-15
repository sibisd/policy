data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_iam_policy_document" "genai_services_lambda_execution_role_policy_document" {
  statement {
    sid       = "KMSPermissions"
    effect    = "Allow"
    resources = [module.kms.key_arn_service]

    actions = [
      "kms:Decrypt",
      "kms:GenerateDataKey",
    ]
  }

  statement {
    sid    = "LambdaPermissions"
    effect = "Allow"

    resources = [
      "arn:aws:lambda:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:function:static-chat",
      "arn:aws:lambda:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:function:ustgenai-ragservices",
      "arn:aws:lambda:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:function:ustgenai-chat-history-sns-consumer"
    ]

    actions = [
      "lambda:InvokeFunction"
    ]
  }

  statement {
    sid    = "GenericServices"
    effect = "Allow"

    resources = ["*"]

    actions = [
      "sns:*",
      "dynamodb:*",
    ]
  }

  statement {
    sid       = "EC2Permissions"
    effect    = "Allow"
    resources = ["*"]

    actions = [
      "ec2:CreateNetworkInterface",
      "ec2:DescribeNetworkInterfaces",
      "ec2:DeleteNetworkInterface",
    ]
  }

  statement {
    sid    = "S3Permissions"
    effect = "Allow"
    resources = [
      "arn:aws:s3:::ess-genaisandbox-${data.aws_caller_identity.current.account_id}-foundation-services-artifacts/*",
      "arn:aws:s3:::ess-genaisandbox-${data.aws_caller_identity.current.account_id}-ragservice-artifacts/*",
      "arn:aws:s3:::ess-genaisandbox-ess-genaisandbox-${data.aws_caller_identity.current.account_id}-chat-history-artifacts/*",
      "arn:aws:s3:::ustsandbox-doc-storage-bucket/*"
    ]

    actions = [
      "s3:PutObject",
      "s3:GetObject",
      "s3:DeleteObject",
      "s3:ListBucket"
    ]
  }

  statement {
    sid       = "CloudWatchPermissions"
    effect    = "Allow"
    resources = ["*"]

    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents"
    ]
  }
}



