#--------------------Customer Managed KMS Key - CMK--------------------------------------
module "kms" {
  source = "./modules/aws-kms"

}
