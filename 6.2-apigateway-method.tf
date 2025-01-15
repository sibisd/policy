resource "aws_api_gateway_method" "foundation_cards_library_method" {
  rest_api_id      = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id      = aws_api_gateway_resource.foundation_resource_cards_library.id
  http_method      = "POST"
  authorization    = "NONE"
  api_key_required = true # API key required
}

resource "aws_api_gateway_method" "foundation_cards_library_method_options_method" {
  rest_api_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id   = aws_api_gateway_resource.foundation_resource_cards_library.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "sandbox_users_resource_method" {
  rest_api_id      = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id      = aws_api_gateway_resource.sandbox_users_resource.id
  http_method      = "POST"
  authorization    = "NONE"
  api_key_required = true # API key required
}

resource "aws_api_gateway_method" "sandbox_users_method_options" {
  rest_api_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id   = aws_api_gateway_resource.sandbox_users_resource.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "static_chat_method" {
  rest_api_id      = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id      = aws_api_gateway_resource.static_chat_resource.id
  http_method      = "POST"
  authorization    = "NONE"
  api_key_required = true # API key required
}

resource "aws_api_gateway_method" "static_chat_method_options" {
  rest_api_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id   = aws_api_gateway_resource.static_chat_resource.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}



resource "aws_api_gateway_method" "deletecard_guid_method" {
  rest_api_id      = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id      = aws_api_gateway_resource.deletecard_guid_resource.id
  http_method      = "POST"
  authorization    = "NONE"
  api_key_required = true # API key required
}

resource "aws_api_gateway_method" "deletecard_guid_method_options" {
  rest_api_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id   = aws_api_gateway_resource.deletecard_guid_resource.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}



resource "aws_api_gateway_method" "getcard_id_method" {
  rest_api_id      = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id      = aws_api_gateway_resource.getcard_id_resource.id
  http_method      = "POST"
  authorization    = "NONE"
  api_key_required = true # API key required
}

resource "aws_api_gateway_method" "getcard_id_method_options" {
  rest_api_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id   = aws_api_gateway_resource.getcard_id_resource.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "testcard_method" {
  rest_api_id      = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id      = aws_api_gateway_resource.testcard_resource.id
  http_method      = "POST"
  authorization    = "NONE"
  api_key_required = true # API key required
}

resource "aws_api_gateway_method" "testcard_method_options" {
  rest_api_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id   = aws_api_gateway_resource.testcard_resource.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "usecard_method" {
  rest_api_id      = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id      = aws_api_gateway_resource.usecard_resource.id
  http_method      = "POST"
  authorization    = "NONE"
  api_key_required = true # API key required
}

resource "aws_api_gateway_method" "usecard_method_options" {
  rest_api_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id   = aws_api_gateway_resource.usecard_resource.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "delete_filemanager_method" {
  rest_api_id      = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id      = aws_api_gateway_resource.delete_filemanager_resource.id
  http_method      = "POST"
  authorization    = "NONE"
  api_key_required = true # API key required
}

resource "aws_api_gateway_method" "delete_filemanager_method_options" {
  rest_api_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id   = aws_api_gateway_resource.delete_filemanager_resource.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}


resource "aws_api_gateway_method" "process_method" {
  rest_api_id      = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id      = aws_api_gateway_resource.process_resource.id
  http_method      = "POST"
  authorization    = "NONE"
  api_key_required = true # API key required
}

resource "aws_api_gateway_method" "process_method_options" {
  rest_api_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id   = aws_api_gateway_resource.process_resource.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "read_filemanager_method" {
  rest_api_id      = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id      = aws_api_gateway_resource.read_filemanager_resource.id
  http_method      = "POST"
  authorization    = "NONE"
  api_key_required = true # API key required
}

resource "aws_api_gateway_method" "read_filemanager_method_options" {
  rest_api_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id   = aws_api_gateway_resource.read_filemanager_resource.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "search_method" {
  rest_api_id      = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id      = aws_api_gateway_resource.search_resource.id
  http_method      = "POST"
  authorization    = "NONE"
  api_key_required = true # API key required
}

resource "aws_api_gateway_method" "search_method_options" {
  rest_api_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id   = aws_api_gateway_resource.search_resource.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "upload_method" {
  rest_api_id      = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id      = aws_api_gateway_resource.upload_resource.id
  http_method      = "POST"
  authorization    = "NONE"
  api_key_required = true # API key required
}

resource "aws_api_gateway_method" "upload_method_options" {
  rest_api_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id   = aws_api_gateway_resource.upload_resource.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "chat_history_method" {
  rest_api_id      = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id      = aws_api_gateway_resource.chat_history_resource.id
  http_method      = "POST"
  authorization    = "NONE"
  api_key_required = true # API key required
}

resource "aws_api_gateway_method" "chat_history_get_method" {
  rest_api_id      = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id      = aws_api_gateway_resource.chat_history_resource.id
  http_method      = "GET"
  authorization    = "NONE"
  api_key_required = true # API key required
}

resource "aws_api_gateway_method" "chat_history_method_options" {
  rest_api_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id   = aws_api_gateway_resource.chat_history_resource.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}
