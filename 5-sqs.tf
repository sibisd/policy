resource "aws_sqs_queue" "chat_history" {
  name              = chat-history
  kms_master_key_id = module.kms.key_arn_service
}