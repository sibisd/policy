#SNS Topics

module "chat_history_sns_topic" {
  source = "./modules/aws-sns"

  topic_name = "chat-data-records"
  kms_id     = module.kms.key_arn_service

  depends_on = [module.kms]
}

module "audit_traceability_sns_topic" {
  source = "./modules/aws-sns"

  topic_name = "audit-trail-records"
  kms_id     = module.kms.key_arn_service

  depends_on = [module.kms]
}