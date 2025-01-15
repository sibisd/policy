
# Integrates the method with an AWS Lambda function using AWS_PROXY
resource "aws_api_gateway_integration" "foundation_cards_library_method_integration" {
  rest_api_id             = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id             = aws_api_gateway_resource.foundation_resource_cards_library.id
  http_method             = aws_api_gateway_method.foundation_cards_library_method.http_method
  credentials             = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/static-chat-lambda-execution-role"
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:eu-central-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-central-1:${data.aws_caller_identity.current.account_id}:function:static-chat-experian/invocations"
}

# Integration for OPTIONS method (echoing back the CORS headers)
resource "aws_api_gateway_integration" "foundation_cards_library_method_options_integration" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.foundation_resource_cards_library.id
  http_method = aws_api_gateway_method.foundation_cards_library_method_options_method.http_method

  #integration_http_method = "OPTIONS"
  type                 = "MOCK"
  passthrough_behavior = "WHEN_NO_MATCH"
}




# Integrates the method with an AWS Lambda function using AWS_PROXY
resource "aws_api_gateway_integration" "sandbox_users_method_integration" {
  rest_api_id             = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id             = aws_api_gateway_resource.sandbox_users_resource.id
  http_method             = aws_api_gateway_method.sandbox_users_resource_method.http_method
  credentials             = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/static-chat-lambda-execution-role"
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:eu-central-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-central-1:${data.aws_caller_identity.current.account_id}:function:static-chat-experian/invocations"
}

# Integration for OPTIONS method (echoing back the CORS headers)
resource "aws_api_gateway_integration" "sandbox_users_method_options_integration" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.sandbox_users_resource.id
  http_method = aws_api_gateway_method.sandbox_users_method_options.http_method

  #integration_http_method = "OPTIONS"
  type                 = "MOCK"
  passthrough_behavior = "WHEN_NO_MATCH"
}




# Integrates the method with an AWS Lambda function using AWS_PROXY
resource "aws_api_gateway_integration" "static_chat_method_integration" {
  rest_api_id             = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id             = aws_api_gateway_resource.static_chat_resource.id
  http_method             = aws_api_gateway_method.static_chat_method.http_method
  credentials             = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/static-chat-lambda-execution-role"
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:eu-central-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-central-1:${data.aws_caller_identity.current.account_id}:function:static-chat-experian/invocations"
}

# Integration for OPTIONS method (echoing back the CORS headers)
resource "aws_api_gateway_integration" "static_chat_method_options_integration" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.static_chat_resource.id
  http_method = aws_api_gateway_method.static_chat_method_options.http_method

  #integration_http_method = "OPTIONS"
  type                 = "MOCK"
  passthrough_behavior = "WHEN_NO_MATCH"
}

##

# Integrates the method with an AWS Lambda function using AWS_PROXY
resource "aws_api_gateway_integration" "deletecard_guid_method_integration" {
  rest_api_id             = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id             = aws_api_gateway_resource.deletecard_guid_resource.id
  http_method             = aws_api_gateway_method.deletecard_guid_method.http_method
  credentials             = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/static-chat-lambda-execution-role"
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:eu-central-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-central-1:${data.aws_caller_identity.current.account_id}:function:static-chat-experian/invocations"
}

# Integration for OPTIONS method (echoing back the CORS headers)
resource "aws_api_gateway_integration" "deletecard_guid_method_options_integration" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.deletecard_guid_resource.id
  http_method = aws_api_gateway_method.deletecard_guid_method_options.http_method

  #integration_http_method = "OPTIONS"
  type                 = "MOCK"
  passthrough_behavior = "WHEN_NO_MATCH"
}

##

# Integrates the method with an AWS Lambda function using AWS_PROXY
resource "aws_api_gateway_integration" "getcard_id_method_integration" {
  rest_api_id             = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id             = aws_api_gateway_resource.getcard_id_resource.id
  http_method             = aws_api_gateway_method.getcard_id_method.http_method
  credentials             = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/static-chat-lambda-execution-role"
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:eu-central-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-central-1:${data.aws_caller_identity.current.account_id}:function:static-chat-experian/invocations"
}

# Integration for OPTIONS method (echoing back the CORS headers)
resource "aws_api_gateway_integration" "getcard_id_method_options_integration" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.getcard_id_resource.id
  http_method = aws_api_gateway_method.getcard_id_method_options.http_method

  #integration_http_method = "OPTIONS"
  type                 = "MOCK"
  passthrough_behavior = "WHEN_NO_MATCH"
}

##

# Integrates the method with an AWS Lambda function using AWS_PROXY
resource "aws_api_gateway_integration" "testcard_method_integration" {
  rest_api_id             = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id             = aws_api_gateway_resource.testcard_resource.id
  http_method             = aws_api_gateway_method.testcard_method.http_method
  credentials             = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/static-chat-lambda-execution-role"
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:eu-central-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-central-1:${data.aws_caller_identity.current.account_id}:function:static-chat-experian/invocations"
}

# Integration for OPTIONS method (echoing back the CORS headers)
resource "aws_api_gateway_integration" "testcard_method_options_integration" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.testcard_resource.id
  http_method = aws_api_gateway_method.testcard_method_options.http_method

  #integration_http_method = "OPTIONS"
  type                 = "MOCK"
  passthrough_behavior = "WHEN_NO_MATCH"
}


##

# Integrates the method with an AWS Lambda function using AWS_PROXY
resource "aws_api_gateway_integration" "usecard_method_integration" {
  rest_api_id             = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id             = aws_api_gateway_resource.usecard_resource.id
  http_method             = aws_api_gateway_method.usecard_method.http_method
  credentials             = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/static-chat-lambda-execution-role"
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:eu-central-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-central-1:${data.aws_caller_identity.current.account_id}:function:static-chat-experian/invocations"
}

# Integration for OPTIONS method (echoing back the CORS headers)
resource "aws_api_gateway_integration" "usecard_method_options_integration" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.usecard_resource.id
  http_method = aws_api_gateway_method.usecard_method_options.http_method

  #integration_http_method = "OPTIONS"
  type                 = "MOCK"
  passthrough_behavior = "WHEN_NO_MATCH"
}


##

# Integrates the method with an AWS Lambda function using AWS_PROXY
resource "aws_api_gateway_integration" "delete_filemanager_method_integration" {
  rest_api_id             = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id             = aws_api_gateway_resource.delete_filemanager_resource.id
  http_method             = aws_api_gateway_method.delete_filemanager_method.http_method
  credentials             = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/ragservices-lambda-execution-role"
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:eu-central-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-central-1:${data.aws_caller_identity.current.account_id}:function:ustgenai-ragservices-experian/invocations"
}

# Integration for OPTIONS method (echoing back the CORS headers)
resource "aws_api_gateway_integration" "delete_filemanager_method_options_integration" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.delete_filemanager_resource.id
  http_method = aws_api_gateway_method.delete_filemanager_method_options.http_method

  #integration_http_method = "OPTIONS"
  type                 = "MOCK"
  passthrough_behavior = "WHEN_NO_MATCH"
}


##

# Integrates the method with an AWS Lambda function using AWS_PROXY
resource "aws_api_gateway_integration" "process_method_integration" {
  rest_api_id             = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id             = aws_api_gateway_resource.process_resource.id
  http_method             = aws_api_gateway_method.process_method.http_method
  credentials             = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/ragservices-lambda-execution-role"
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:eu-central-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-central-1:${data.aws_caller_identity.current.account_id}:function:ustgenai-ragservices-experian/invocations"
}

# Integration for OPTIONS method (echoing back the CORS headers)
resource "aws_api_gateway_integration" "process_method_options_integration" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.process_resource.id
  http_method = aws_api_gateway_method.process_method_options.http_method

  #integration_http_method = "OPTIONS"
  type                 = "MOCK"
  passthrough_behavior = "WHEN_NO_MATCH"
}

##

# Integrates the method with an AWS Lambda function using AWS_PROXY
resource "aws_api_gateway_integration" "read_filemanager_method_integration" {
  rest_api_id             = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id             = aws_api_gateway_resource.read_filemanager_resource.id
  http_method             = aws_api_gateway_method.read_filemanager_method.http_method
  credentials             = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/ragservices-lambda-execution-role"
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:eu-central-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-central-1:${data.aws_caller_identity.current.account_id}:function:ustgenai-ragservices-experian/invocations"
}

# Integration for OPTIONS method (echoing back the CORS headers)
resource "aws_api_gateway_integration" "read_filemanager_method_options_integration" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.read_filemanager_resource.id
  http_method = aws_api_gateway_method.read_filemanager_method_options.http_method

  #integration_http_method = "OPTIONS"
  type                 = "MOCK"
  passthrough_behavior = "WHEN_NO_MATCH"
}

##

# Integrates the method with an AWS Lambda function using AWS_PROXY
resource "aws_api_gateway_integration" "search_method_integration" {
  rest_api_id             = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id             = aws_api_gateway_resource.search_resource.id
  http_method             = aws_api_gateway_method.search_method.http_method
  credentials             = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/ragservices-lambda-execution-role"
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:eu-central-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-central-1:${data.aws_caller_identity.current.account_id}:function:ustgenai-ragservices-experian/invocations"
}

# Integration for OPTIONS method (echoing back the CORS headers)
resource "aws_api_gateway_integration" "search_method_options_integration" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.search_resource.id
  http_method = aws_api_gateway_method.search_method_options.http_method

  #integration_http_method = "OPTIONS"
  type                 = "MOCK"
  passthrough_behavior = "WHEN_NO_MATCH"
}

# Integrates the method with an AWS Lambda function using AWS_PROXY
resource "aws_api_gateway_integration" "upload_method_integration" {
  rest_api_id             = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id             = aws_api_gateway_resource.upload_resource.id
  http_method             = aws_api_gateway_method.upload_method.http_method
  credentials             = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/ragservices-lambda-execution-role"
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:eu-central-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-central-1:${data.aws_caller_identity.current.account_id}:function:ustgenai-ragservices-experian/invocations"
}

# Integration for OPTIONS method (echoing back the CORS headers)
resource "aws_api_gateway_integration" "upload_method_options_integration" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.upload_resource.id
  http_method = aws_api_gateway_method.upload_method_options.http_method

  #integration_http_method = "OPTIONS"
  type                 = "MOCK"
  passthrough_behavior = "WHEN_NO_MATCH"
}

#

# Integrates the method with an AWS Lambda function using AWS_PROXY
resource "aws_api_gateway_integration" "chat_history_method_integration" {
  rest_api_id             = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id             = aws_api_gateway_resource.chat_history_resource.id
  http_method             = aws_api_gateway_method.chat_history_method.http_method
  credentials             = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/chathistory-sns-consumer-lambda-execution-role"
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:eu-central-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-central-1:${data.aws_caller_identity.current.account_id}:function:ustgenai-experian-chat-history-sns-consumer/invocations"
}

# Integrates the method with an AWS Lambda function using AWS_PROXY
resource "aws_api_gateway_integration" "chat_history_get_method_integration" {
  rest_api_id             = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id             = aws_api_gateway_resource.chat_history_resource.id
  http_method             = aws_api_gateway_method.chat_history_get_method.http_method
  credentials             = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/chathistory-sns-consumer-lambda-execution-role"
  integration_http_method = "GET"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:eu-central-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-central-1:${data.aws_caller_identity.current.account_id}:function:ustgenai-experian-chat-history-sns-consumer/invocations"
}

# Integration for OPTIONS method (echoing back the CORS headers)
resource "aws_api_gateway_integration" "chat_history_method_options_integration" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.chat_history_resource.id
  http_method = aws_api_gateway_method.chat_history_method_options.http_method

  #integration_http_method = "OPTIONS"
  type                 = "MOCK"
  passthrough_behavior = "WHEN_NO_MATCH"
}