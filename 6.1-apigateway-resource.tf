resource "aws_api_gateway_resource" "foundation_resource" {
  path_part   = "foundation" # Path for the resource
  parent_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.root_resource_id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "foundation_resource_cards_library" {
  path_part   = "cards_library" # Path for the resource
  parent_id   = aws_api_gateway_resource.foundation_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "sandbox_users_resource" {
  path_part   = "sandbox_users" # Path for the resource
  parent_id   = aws_api_gateway_resource.foundation_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "static_chat_resource" {
  path_part   = "static_chat" # Path for the resource
  parent_id   = aws_api_gateway_resource.foundation_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}


resource "aws_api_gateway_resource" "custom_resource" {
  path_part   = "custom" # Path for the resource
  parent_id   = aws_api_gateway_resource.foundation_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "deletecard_resource" {
  path_part   = "deleteCard" # Path for the resource
  parent_id   = aws_api_gateway_resource.custom_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "deletecard_id_resource" {
  path_part   = "{id}" # Path for the resource
  parent_id   = aws_api_gateway_resource.deletecard_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "deletecard_guid_resource" {
  path_part   = "{guid}" # Path for the resource
  parent_id   = aws_api_gateway_resource.deletecard_id_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "getcard_resource" {
  path_part   = "getCard" # Path for the resource
  parent_id   = aws_api_gateway_resource.custom_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "getcard_id_resource" {
  path_part   = "{id}" # Path for the resource
  parent_id   = aws_api_gateway_resource.getcard_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "testcard_resource" {
  path_part   = "testCard" # Path for the resource
  parent_id   = aws_api_gateway_resource.custom_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "usecard_resource" {
  path_part   = "useCard" # Path for the resource
  parent_id   = aws_api_gateway_resource.custom_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "ragservice_resource" {
  path_part   = "ragservice" # Path for the resource
  parent_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.root_resource_id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "delete_filemanager_resource" {
  path_part   = "deletefilemanager" # Path for the resource
  parent_id   = aws_api_gateway_resource.ragservice_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "process_resource" {
  path_part   = "process" # Path for the resource
  parent_id   = aws_api_gateway_resource.ragservice_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "read_filemanager_resource" {
  path_part   = "readfilemanager" # Path for the resource
  parent_id   = aws_api_gateway_resource.ragservice_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "search_resource" {
  path_part   = "search" # Path for the resource
  parent_id   = aws_api_gateway_resource.ragservice_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "upload_resource" {
  path_part   = "upload" # Path for the resource
  parent_id   = aws_api_gateway_resource.ragservice_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "coreservice_resource" {
  path_part   = "coreservice" # Path for the resource
  parent_id   = aws_api_gateway_rest_api.ustgenai_private_rest_api.root_resource_id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}

resource "aws_api_gateway_resource" "chat_history_resource" {
  path_part   = "chat_history" # Path for the resource
  parent_id   = aws_api_gateway_resource.coreservice_resource.id
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
}
