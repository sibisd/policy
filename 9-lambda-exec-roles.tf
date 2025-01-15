# #S3 Buckets for storing the artifact before deploying as function & Creating Lambda execution roles
# module "audisense_foundationservices_static_chat_pipeline_artifact" {
#   source = "./modules/s3-artifacts"

#   bucket                  = "audisense-${data.aws_caller_identity.current.account_id}-foundation-services-artifacts"
#   force_destroy           = false
#   logging                 = false
#   restrict_public_buckets = true
#   versioning              = "Enabled"
#   object_ownership        = "ObjectWriter"

#   lambda_execution_role_name = "static-chat-lambda-execution-role"
#   policy_arns = [
#     "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
#     "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
#     "arn:aws:iam::aws:policy/service-role/AWSLambdaDynamoDBExecutionRole"
#   ]

# }

# #S3 Buckets for storing the artifact before deploying as function & Creating Lambda execution roles
# module "audisense_ragservice_pipeline_artifact" {
#   source = "./modules/s3-artifacts"

#   bucket                  = "audisense-${data.aws_caller_identity.current.account_id}-ragservice-artifacts"
#   force_destroy           = false
#   logging                 = false
#   restrict_public_buckets = true
#   versioning              = "Enabled"
#   object_ownership        = "ObjectWriter"

#   lambda_execution_role_name = "ragservices-lambda-execution-role"
#   policy_arns = [
#     "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
#     "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
#     "arn:aws:iam::aws:policy/service-role/AWSLambdaDynamoDBExecutionRole"
#   ]
# }

# #S3 Buckets for storing the artifact before deploying as function & Creating Lambda execution roles
# module "audisense_chat_history_sns_consumer_pipeline_artifact" {
#   source = "./modules/s3-artifacts"

#   bucket                  = "audisense-${data.aws_caller_identity.current.account_id}-chat-history-artifacts"
#   force_destroy           = false
#   logging                 = false
#   restrict_public_buckets = true
#   versioning              = "Enabled"
#   object_ownership        = "ObjectWriter"

#   lambda_execution_role_name = "chat-history-sns-consumer-lambda-execution-role"
#   policy_arns = [
#     "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
#     "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
#     "arn:aws:iam::aws:policy/service-role/AWSLambdaDynamoDBExecutionRole"
#   ]
# }


# #IAM policy to allow lambda execution role to have access on various AWS Services
# resource "aws_iam_policy" "audisense_services_lambda_execution_role_policy" {
#   name        = "genai-services-lambda-exec-policy"
#   description = "IAM policy to allow lambda execution role to have access on various AWS Services"
#   policy      = data.aws_iam_policy_document.audisense_services_lambda_execution_role_policy_document.json
# }

# # Attach the dynamic policy separately
# resource "aws_iam_role_policy_attachment" "static_chat_lambda_execution_role_policy_attachment" {
#   role       = "static-chat-lambda-execution-role"
#   policy_arn = aws_iam_policy.audisense_services_lambda_execution_role_policy.arn
#   depends_on = [
#     module.ess_genaisandbox_foundationservices_static_chat_pipeline_artifact
#   ]
# }

# # Attach the dynamic policy separately
# resource "aws_iam_role_policy_attachment" "ragservices_lambda_execution_role_policy_attachment" {
#   role       = "ragservice-lambda-execution-role"
#   policy_arn = aws_iam_policy.audisense_services_lambda_execution_role_policy.arn
#   depends_on = [
#     module.ess_genaisandbox_ragservice_pipeline_artifact
#   ]
# }

# # Attach the dynamic policy separately
# resource "aws_iam_role_policy_attachment" "chat_history_sns_consumer_lambda_execution_role_policy_attachment" {
#   role       = "chat-history-sns-consumer-lambda-execution-role"
#   policy_arn = aws_iam_policy.audisense_services_lambda_execution_role_policy.arn
#   depends_on = [
#     module.ess_genaisandbox_chat_history_sns_consumer_pipeline_artifact
#   ]
# }