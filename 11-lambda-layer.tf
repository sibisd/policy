# Upload the layer ZIP to S3
resource "aws_s3_object" "lambda_layer_zip" {
  bucket = "12345layers"
  key    = "layers/audisense-lambda-layers.zip" # Path and name for the ZIP in S3
  source = "layers/audisense-lambda-layers.zip"    # Local path to your ZIP file
  acl    = "private"
}

# Create the Lambda layer from the uploaded ZIP
resource "aws_lambda_layer_version" "lambda_layer" {
  layer_name          = "audisense-lambda-layer" # Replace with your desired layer name
  s3_bucket           = "12345layers"
  s3_key              = aws_s3_object.lambda_layer_zip.id
  compatible_runtimes = ["python3.11"] # Specify compatible runtimes
  description         = "My Lambda layer for custom dependencies"
}