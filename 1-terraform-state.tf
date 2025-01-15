
#-----------------S3 Bucket for state files---------------------------------------------
module "s3_backend" {
  source = "./modules/aws-s3/"

  bucket                  = "audisense-${data.aws_caller_identity.current.account_id}-tf-backend-state-bucket"
  force_destroy           = false
  logging                 = false
  restrict_public_buckets = true
  versioning              = "Enabled"
  object_ownership        = "ObjectWriter"
}

#--------------Bucket Policy-------------------------------------------------------------
resource "aws_s3_bucket_lifecycle_configuration" "s3_backend_lifecycle_configuration" {
  bucket = module.s3_backend.id

  rule {
    id = "expiry"

    filter {
      prefix = ""
    }

    noncurrent_version_expiration {
      noncurrent_days = 70
    }

    status = "Enabled"
  }
}

#-----------------Terraform State Lock Configuration--------------------------------------
resource "aws_dynamodb_table" "terraform_lock" {
  name         = "audisense-${data.aws_caller_identity.current.account_id}-tf-backend-lock-table"
  billing_mode = "PAY_PER_REQUEST"
  point_in_time_recovery {
    enabled = true
  }
  server_side_encryption {
    enabled = true
  }
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    "Name" = "DynamoDB Terraform State Lock Table"
  }
}
