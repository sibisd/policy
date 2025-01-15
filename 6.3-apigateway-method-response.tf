
##cards
resource "aws_api_gateway_method_response" "foundation_cards_library_method_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.foundation_resource_cards_library.id
  http_method = aws_api_gateway_method.foundation_cards_library_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

}

# Define the response headers (CORS headers)
resource "aws_api_gateway_method_response" "foundation_cards_library_method_options_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.foundation_resource_cards_library.id
  http_method = aws_api_gateway_method.foundation_cards_library_method_options_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

  # CORS headers
  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = true
    "method.response.header.Access-Control-Allow-Headers"     = true
    "method.response.header.Access-Control-Allow-Methods"     = true
    "method.response.header.Access-Control-Allow-Origin"      = true
  }
}


resource "aws_api_gateway_method_response" "sandbox_users_method_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.sandbox_users_resource.id
  http_method = aws_api_gateway_method.sandbox_users_resource_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

}

# Define the response headers (CORS headers)
resource "aws_api_gateway_method_response" "sandbox_users_method_options_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.sandbox_users_resource.id
  http_method = aws_api_gateway_method.sandbox_users_method_options.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

  # CORS headers
  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = true
    "method.response.header.Access-Control-Allow-Headers"     = true
    "method.response.header.Access-Control-Allow-Methods"     = true
    "method.response.header.Access-Control-Allow-Origin"      = true
  }
}



resource "aws_api_gateway_method_response" "static_chat_method_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.static_chat_resource.id
  http_method = aws_api_gateway_method.static_chat_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

}

# Define the response headers (CORS headers)
resource "aws_api_gateway_method_response" "static_chat_method_options_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.static_chat_resource.id
  http_method = aws_api_gateway_method.static_chat_method_options.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

  # CORS headers
  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = true
    "method.response.header.Access-Control-Allow-Headers"     = true
    "method.response.header.Access-Control-Allow-Methods"     = true
    "method.response.header.Access-Control-Allow-Origin"      = true
  }
}


resource "aws_api_gateway_method_response" "deletecard_guid_method_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.deletecard_guid_resource.id
  http_method = aws_api_gateway_method.deletecard_guid_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

}

# Define the response headers (CORS headers)
resource "aws_api_gateway_method_response" "deletecard_guid_method_options_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.deletecard_guid_resource.id
  http_method = aws_api_gateway_method.deletecard_guid_method_options.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

  # CORS headers
  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = true
    "method.response.header.Access-Control-Allow-Headers"     = true
    "method.response.header.Access-Control-Allow-Methods"     = true
    "method.response.header.Access-Control-Allow-Origin"      = true
  }
}



resource "aws_api_gateway_method_response" "getcard_id_method_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.getcard_id_resource.id
  http_method = aws_api_gateway_method.getcard_id_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

}

# Define the response headers (CORS headers)
resource "aws_api_gateway_method_response" "getcard_id_method_options_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.getcard_id_resource.id
  http_method = aws_api_gateway_method.getcard_id_method_options.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

  # CORS headers
  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = true
    "method.response.header.Access-Control-Allow-Headers"     = true
    "method.response.header.Access-Control-Allow-Methods"     = true
    "method.response.header.Access-Control-Allow-Origin"      = true
  }
}

resource "aws_api_gateway_method_response" "testcard_method_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.testcard_resource.id
  http_method = aws_api_gateway_method.testcard_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

}

# Define the response headers (CORS headers)
resource "aws_api_gateway_method_response" "testcard_method_options_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.testcard_resource.id
  http_method = aws_api_gateway_method.testcard_method_options.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

  # CORS headers
  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = true
    "method.response.header.Access-Control-Allow-Headers"     = true
    "method.response.header.Access-Control-Allow-Methods"     = true
    "method.response.header.Access-Control-Allow-Origin"      = true
  }
}

resource "aws_api_gateway_method_response" "usecard_method_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.usecard_resource.id
  http_method = aws_api_gateway_method.usecard_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

}

# Define the response headers (CORS headers)
resource "aws_api_gateway_method_response" "usecard_method_options_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.usecard_resource.id
  http_method = aws_api_gateway_method.usecard_method_options.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

  # CORS headers
  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = true
    "method.response.header.Access-Control-Allow-Headers"     = true
    "method.response.header.Access-Control-Allow-Methods"     = true
    "method.response.header.Access-Control-Allow-Origin"      = true
  }
}

resource "aws_api_gateway_method_response" "delete_filemanager_method_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.delete_filemanager_resource.id
  http_method = aws_api_gateway_method.delete_filemanager_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

}

# Define the response headers (CORS headers)
resource "aws_api_gateway_method_response" "delete_filemanager_method_options_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.delete_filemanager_resource.id
  http_method = aws_api_gateway_method.delete_filemanager_method_options.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

  # CORS headers
  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = true
    "method.response.header.Access-Control-Allow-Headers"     = true
    "method.response.header.Access-Control-Allow-Methods"     = true
    "method.response.header.Access-Control-Allow-Origin"      = true
  }
}



resource "aws_api_gateway_method_response" "process_method_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.process_resource.id
  http_method = aws_api_gateway_method.process_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

}

# Define the response headers (CORS headers)
resource "aws_api_gateway_method_response" "process_method_options_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.process_resource.id
  http_method = aws_api_gateway_method.process_method_options.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

  # CORS headers
  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = true
    "method.response.header.Access-Control-Allow-Headers"     = true
    "method.response.header.Access-Control-Allow-Methods"     = true
    "method.response.header.Access-Control-Allow-Origin"      = true
  }
}

resource "aws_api_gateway_method_response" "read_filemanager_method_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.read_filemanager_resource.id
  http_method = aws_api_gateway_method.read_filemanager_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

}

# Define the response headers (CORS headers)
resource "aws_api_gateway_method_response" "read_filemanager_method_options_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.read_filemanager_resource.id
  http_method = aws_api_gateway_method.read_filemanager_method_options.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

  # CORS headers
  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = true
    "method.response.header.Access-Control-Allow-Headers"     = true
    "method.response.header.Access-Control-Allow-Methods"     = true
    "method.response.header.Access-Control-Allow-Origin"      = true
  }
}

resource "aws_api_gateway_method_response" "search_method_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.search_resource.id
  http_method = aws_api_gateway_method.search_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

}

# Define the response headers (CORS headers)
resource "aws_api_gateway_method_response" "search_method_options_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.search_resource.id
  http_method = aws_api_gateway_method.search_method_options.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

  # CORS headers
  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = true
    "method.response.header.Access-Control-Allow-Headers"     = true
    "method.response.header.Access-Control-Allow-Methods"     = true
    "method.response.header.Access-Control-Allow-Origin"      = true
  }
}

resource "aws_api_gateway_method_response" "upload_method_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.upload_resource.id
  http_method = aws_api_gateway_method.upload_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

}

# Define the response headers (CORS headers)
resource "aws_api_gateway_method_response" "upload_method_options_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.upload_resource.id
  http_method = aws_api_gateway_method.upload_method_options.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

  # CORS headers
  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = true
    "method.response.header.Access-Control-Allow-Headers"     = true
    "method.response.header.Access-Control-Allow-Methods"     = true
    "method.response.header.Access-Control-Allow-Origin"      = true
  }
}

resource "aws_api_gateway_method_response" "chat_history_method_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.chat_history_resource.id
  http_method = aws_api_gateway_method.chat_history_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

}

resource "aws_api_gateway_method_response" "chat_history_get_method_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.chat_history_resource.id
  http_method = aws_api_gateway_method.chat_history_get_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

}

# Define the response headers (CORS headers)
resource "aws_api_gateway_method_response" "chat_history_method_options_response" {
  rest_api_id = aws_api_gateway_rest_api.ustgenai_private_rest_api.id
  resource_id = aws_api_gateway_resource.chat_history_resource.id
  http_method = aws_api_gateway_method.chat_history_method_options.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

  # CORS headers
  response_parameters = {
    "method.response.header.Access-Control-Allow-Credentials" = true
    "method.response.header.Access-Control-Allow-Headers"     = true
    "method.response.header.Access-Control-Allow-Methods"     = true
    "method.response.header.Access-Control-Allow-Origin"      = true
  }
}

