
resource "aws_security_group" "static_chat_lambda_sg" {
  name        = "static_chat_lambda_sg"
  description = "Security group allowing all traffic from self and all outbound traffic"
  vpc_id      = "vpc-0f71771da872dc0e8"

  # Ingress rule to allow all traffic from within the same security group
  ingress {
    description     = "Allow all traffic from VPC"
    from_port       = 0
    to_port         = 0
    protocol        = "-1" # "-1" means all protocols
    security_groups = ["sg-0512fc20b0859c1ed"]
  }

  # Egress rule to allow all outbound traffic
  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # "-1" means all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name       = "static-chat-lambda_sg"
    Managed-by = "terraform"
    Owner      = "ustgenaisandbox"
  }
}



resource "aws_security_group" "ragservices_lambda_sg" {
  name        = "ragservices_lambda_sg"
  description = "Security group allowing all traffic from self and all outbound traffic"
  vpc_id      = "vpc-0f71771da872dc0e8"

  # Ingress rule to allow all traffic from within the same security group
  ingress {
    description     = "Allow all traffic from VPC"
    from_port       = 0
    to_port         = 0
    protocol        = "-1" # "-1" means all protocols
    security_groups = ["sg-0512fc20b0859c1ed"]
  }

  # Egress rule to allow all outbound traffic
  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # "-1" means all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name       = "ragservices-lambda-sg"
    Managed-by = "terraform"
    Owner      = "ustgenaisandbox"
  }
}