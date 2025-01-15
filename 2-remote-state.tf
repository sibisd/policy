# terraform {
#   backend "s3" {
#     bucket         = "audisense-${data.aws_caller_identity.current.account_id}-tf-backend-state-bucket"
#     key            = "audisense-${data.aws_caller_identity.current.account_id}-tf.tfstate"
#     region         = "eu-west-2"
#     dynamodb_table = "audisense-${data.aws_caller_identity.current.account_id}-tf-backend-lock-table"
#   }
# }
