
#CodeCommit Repository - Frontend (user-app) - For AWS Amplify

resource "aws_codecommit_repository" "audisense_user_app_replica" {
  repository_name = "audisense-user-app-replica"
  description     = "Frontend ADO repository replica for AWS Amplify"
  kms_key_id      = module.kms.key_arn_service
}


## IAM Service Role for AWS Amplify

resource "aws_iam_role" "amplify_audisense_service_role" {
  name               = "AWSAmplifyServiceRole-AudiSense"
  description        = "Customer Managed Service Role For AWS Amplify"
  assume_role_policy = data.aws_iam_policy_document.amplify_audisense_service_role_trust_policy_document.json

}

resource "aws_iam_role_policy" "amplify_audisense_service_role_policy" {
  name   = "AWSAmplifyServiceRolePolicy-AudiSense"
  role   = aws_iam_role.amplify_audisense_service_role.id
  policy = data.aws_iam_policy_document.amplify_audisense_service_role_policy_document.json
}

## IAM Managed Policy for Service Role

resource "aws_iam_role_policy_attachment" "amplify_audisense_policy_attachment" {
  role       = aws_iam_role.amplify_audisense_service_role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-Amplify"
}

## AWS Amplify Service Role Trust Policy Document

data "aws_iam_policy_document" "amplify_audisense_service_role_trust_policy_document" {
  statement {
    sid     = ""
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["amplify.amazonaws.com"]
    }
  }
}


## AWS Amplify Service Role IAM Policy

data "aws_iam_policy_document" "amplify_audisense_service_role_policy_document" {
  statement {
    sid       = "CodeCommitGitAccess"
    effect    = "Allow"
    resources = ["*"]

    actions = [
      "codecommit:GetRepository",
      "codecommit:GitPull",
      "codecommit:GitPush",
    ]
  }

  statement {
    sid       = "KMSKeyAccess"
    effect    = "Allow"
    resources = [module.kms.key_arn_service]
    actions   = ["kms:*"]
  }

  statement {
    sid       = "CodeCommitAccess"
    effect    = "Allow"
    resources = ["*"]
    actions   = ["codecommit:ListRepositories"]
  }
}

## AWS Amplify App Deployment

resource "aws_amplify_app" "audisense_user_app" {
  name = "audisense-user-app"
  repository           = "https://git-codecommit.eu-central-1.amazonaws.com/v1/repos/audisense-user-app-replica"
  iam_service_role_arn = aws_iam_role.amplify_audisense_service_role.arn

  build_spec = <<-EOT
version: 0.1
frontend:
  phases:
    preBuild:
      commands:
        - npm ci --cache .npm --prefer-offline
    build:
      commands:
        - npm run build
  artifacts:
    baseDirectory: build
    files:
      - '**/*'
  cache:
    paths:
      - .npm/**/*
EOT

  custom_rule {
    source = "/<*>"
    status = "404"
    target = "/index.html"
  }

  custom_rule {
    source = "</^[^.]+$|\\.(?!(css|gif|ico|jpg|js|png|txt|svg|woff|ttf|map|json)$)([^.]+$)/>"
    status = "200"
    target = "/index.html"
  }

}

## AWS Amplify Branch Settings

resource "aws_amplify_branch" "audisense_user_app_branch" {
  app_id      = aws_amplify_app.audisense_user_app.id
  branch_name = "main"

  framework = "React"
  stage     = "PRODUCTION"


}
