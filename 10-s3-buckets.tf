# module "audisense_customcards_metadata" {
#   source = "./modules/aws-s3/"

#   bucket                  = "audisense-customcards-metadata"
#   force_destroy           = false
#   logging                 = false
#   restrict_public_buckets = true
#   versioning              = "Enabled"
#   object_ownership        = "ObjectWriter"
# }

# module "audisense_docstorage" {
#   source = "./modules/aws-s3/"

#   bucket                  = "audisense-doc-storage"
#   force_destroy           = false
#   logging                 = false
#   restrict_public_buckets = true
#   versioning              = "Enabled"
#   object_ownership        = "ObjectWriter"
# }

# module "audisense_single_document_search" {
#   source = "./modules/aws-s3/"

#   bucket                  = "audisense-single-document-search"
#   force_destroy           = false
#   logging                 = false
#   restrict_public_buckets = true
#   versioning              = "Enabled"
#   object_ownership        = "ObjectWriter"
# }

# module "lambda_layers" {
#   source = "./modules/aws-s3/"

#   bucket                  = "audisense-lambda-layers"
#   force_destroy           = false
#   logging                 = false
#   restrict_public_buckets = true
#   versioning              = "Enabled"
#   object_ownership        = "ObjectWriter"
# }