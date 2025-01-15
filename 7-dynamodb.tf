

# Table for Event Audit and Analytics
resource "aws_dynamodb_table" "event_audit_and_analytics" {
  name         = "user-interaction-analytics-table"
  billing_mode = "PAY_PER_REQUEST"
  point_in_time_recovery {
    enabled = true
  }
  server_side_encryption {
    enabled     = true
    kms_key_arn = module.kms.key_arn_service
  }
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    "Name" = "Event Audit And Analytics"
  }

  depends_on = [
    module.kms
  ]
}


# Table for User Groups Data
resource "aws_dynamodb_table" "user_groups_data" {
  name         = "user-groups-data-table"
  billing_mode = "PAY_PER_REQUEST"
  point_in_time_recovery {
    enabled = true
  }
  server_side_encryption {
    enabled     = true
    kms_key_arn = module.kms.key_arn_service
  }
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    "Name" = "User Group Data"
  }

  depends_on = [
    module.kms
  ]
}

# Table for Knowledge Base Records
resource "aws_dynamodb_table" "knowledge_base_records" {
  name         = "knowledge-base-records-table"
  billing_mode = "PAY_PER_REQUEST"
  point_in_time_recovery {
    enabled = true
  }
  server_side_encryption {
    enabled     = true
    kms_key_arn = module.kms.key_arn_service
  }
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    "Name" = "Knowledge Base Records"
  }

  depends_on = [
    module.kms
  ]
}

# Table for File Metadata
resource "aws_dynamodb_table" "file_metadata" {
  name         = "file-metedata-table"
  billing_mode = "PAY_PER_REQUEST"
  point_in_time_recovery {
    enabled = true
  }
  server_side_encryption {
    enabled     = true
    kms_key_arn = module.kms.key_arn_service
  }
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    "Name" = "File Metadata"
  }

  depends_on = [
    module.kms
  ]
}