# Attach the method response to the integration
resource "aws_api_gateway_integration_response" "foundation_cards_library_method_options_response" {
  depends_on  = [aws_api_gateway_integration.foundation_cards_library_method_options_integration]
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.foundation_resource_cards_library.id
  http_method = aws_api_gateway_method.foundation_cards_library_method_options_method.http_method
  status_code = aws_api_gateway_method_response.foundation_cards_library_method_options_response.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'true'"
    "method.response.header.Access-Control-Allow-Headers"     = "'X-Api-Key,request-source, Content-Type, X-Amz-Date, Authorization, X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods"     = "'POST, GET, PUT, DELETE, OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"      = "'*'"
  }
}

resource "aws_api_gateway_integration_response" "sandbox_users_method_options_response" {
  depends_on  = [aws_api_gateway_integration.sandbox_users_method_options_integration]
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.sandbox_users_resource.id
  http_method = aws_api_gateway_method.sandbox_users_method_options.http_method
  status_code = aws_api_gateway_method_response.sandbox_users_method_options_response.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'true'"
    "method.response.header.Access-Control-Allow-Headers"     = "'X-Api-Key,request-source, Content-Type, X-Amz-Date, Authorization, X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods"     = "'POST, GET, PUT, DELETE, OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"      = "'*'"
  }
}

resource "aws_api_gateway_integration_response" "static_chat_method_options_response" {
  depends_on  = [aws_api_gateway_integration.static_chat_method_options_integration]
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.static_chat_resource.id
  http_method = aws_api_gateway_method.static_chat_method_options.http_method
  status_code = aws_api_gateway_method_response.static_chat_method_options_response.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'true'"
    "method.response.header.Access-Control-Allow-Headers"     = "'X-Api-Key,request-source, Content-Type, X-Amz-Date, Authorization, X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods"     = "'POST, GET, PUT, DELETE, OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"      = "'*'"
  }
}


resource "aws_api_gateway_integration_response" "deletecard_guid_method_options_response" {
  depends_on  = [aws_api_gateway_integration.deletecard_guid_method_options_integration]
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.deletecard_guid_resource.id
  http_method = aws_api_gateway_method.deletecard_guid_method_options.http_method
  status_code = aws_api_gateway_method_response.deletecard_guid_method_options_response.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'true'"
    "method.response.header.Access-Control-Allow-Headers"     = "'X-Api-Key,request-source, Content-Type, X-Amz-Date, Authorization, X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods"     = "'POST, GET, PUT, DELETE, OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"      = "'*'"
  }
}

resource "aws_api_gateway_integration_response" "getcard_id_method_options_response" {
  depends_on  = [aws_api_gateway_integration.getcard_id_method_options_integration]
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.getcard_id_resource.id
  http_method = aws_api_gateway_method.getcard_id_method_options.http_method
  status_code = aws_api_gateway_method_response.getcard_id_method_options_response.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'true'"
    "method.response.header.Access-Control-Allow-Headers"     = "'X-Api-Key,request-source, Content-Type, X-Amz-Date, Authorization, X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods"     = "'POST, GET, PUT, DELETE, OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"      = "'*'"
  }
}

resource "aws_api_gateway_integration_response" "testcard_method_options_response" {
  depends_on  = [aws_api_gateway_integration.testcard_method_options_integration]
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.testcard_resource.id
  http_method = aws_api_gateway_method.testcard_method_options.http_method
  status_code = aws_api_gateway_method_response.testcard_method_options_response.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'true'"
    "method.response.header.Access-Control-Allow-Headers"     = "'X-Api-Key,request-source, Content-Type, X-Amz-Date, Authorization, X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods"     = "'POST, GET, PUT, DELETE, OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"      = "'*'"
  }
}


resource "aws_api_gateway_integration_response" "usecard_method_options_response" {
  depends_on  = [aws_api_gateway_integration.usecard_method_options_integration]
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.usecard_resource.id
  http_method = aws_api_gateway_method.usecard_method_options.http_method
  status_code = aws_api_gateway_method_response.usecard_method_options_response.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'true'"
    "method.response.header.Access-Control-Allow-Headers"     = "'X-Api-Key,request-source, Content-Type, X-Amz-Date, Authorization, X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods"     = "'POST, GET, PUT, DELETE, OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"      = "'*'"
  }
}

resource "aws_api_gateway_integration_response" "delete_filemanager_method_options_response" {
  depends_on  = [aws_api_gateway_integration.delete_filemanager_method_options_integration]
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.delete_filemanager_resource.id
  http_method = aws_api_gateway_method.delete_filemanager_method_options.http_method
  status_code = aws_api_gateway_method_response.delete_filemanager_method_options_response.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'true'"
    "method.response.header.Access-Control-Allow-Headers"     = "'X-Api-Key,request-source, Content-Type, X-Amz-Date, Authorization, X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods"     = "'POST, GET, PUT, DELETE, OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"      = "'*'"
  }
}


resource "aws_api_gateway_integration_response" "process_method_options_response" {
  depends_on  = [aws_api_gateway_integration.process_method_options_integration]
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.process_resource.id
  http_method = aws_api_gateway_method.process_method_options.http_method
  status_code = aws_api_gateway_method_response.process_method_options_response.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'true'"
    "method.response.header.Access-Control-Allow-Headers"     = "'X-Api-Key,request-source, Content-Type, X-Amz-Date, Authorization, X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods"     = "'POST, GET, PUT, DELETE, OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"      = "'*'"
  }
}


resource "aws_api_gateway_integration_response" "read_filemanager_method_options_response" {
  depends_on  = [aws_api_gateway_integration.read_filemanager_method_options_integration]
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.read_filemanager_resource.id
  http_method = aws_api_gateway_method.read_filemanager_method_options.http_method
  status_code = aws_api_gateway_method_response.read_filemanager_method_options_response.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'true'"
    "method.response.header.Access-Control-Allow-Headers"     = "'X-Api-Key,request-source, Content-Type, X-Amz-Date, Authorization, X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods"     = "'POST, GET, PUT, DELETE, OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"      = "'*'"
  }
}


resource "aws_api_gateway_integration_response" "search_method_options_response" {
  depends_on  = [aws_api_gateway_integration.search_method_options_integration]
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.search_resource.id
  http_method = aws_api_gateway_method.search_method_options.http_method
  status_code = aws_api_gateway_method_response.search_method_options_response.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'true'"
    "method.response.header.Access-Control-Allow-Headers"     = "'X-Api-Key,request-source, Content-Type, X-Amz-Date, Authorization, X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods"     = "'POST, GET, PUT, DELETE, OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"      = "'*'"
  }
}


resource "aws_api_gateway_integration_response" "upload_method_options_response" {
  depends_on  = [aws_api_gateway_integration.upload_method_options_integration]
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.upload_resource.id
  http_method = aws_api_gateway_method.upload_method_options.http_method
  status_code = aws_api_gateway_method_response.upload_method_options_response.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'true'"
    "method.response.header.Access-Control-Allow-Headers"     = "'X-Api-Key,request-source, Content-Type, X-Amz-Date, Authorization, X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods"     = "'POST, GET, PUT, DELETE, OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"      = "'*'"
  }
}


resource "aws_api_gateway_integration_response" "chat_history_method_options_response" {
  depends_on  = [aws_api_gateway_integration.chat_history_method_options_integration]
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.chat_history_resource.id
  http_method = aws_api_gateway_method.chat_history_method_options.http_method
  status_code = aws_api_gateway_method_response.chat_history_method_options_response.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = "'true'"
    "method.response.header.Access-Control-Allow-Headers"     = "'X-Api-Key,request-source, Content-Type, X-Amz-Date, Authorization, X-Amz-Security-Token'"
    "method.response.header.Access-Control-Allow-Methods"     = "'POST, GET, PUT, DELETE, OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"      = "'*'"
  }
}





