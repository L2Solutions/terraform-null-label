provider "aws" {
  region = "us-east-2"
}

# Shortest possible.
module "ts-dev-labels" {
  source = "../../"

  namespace = "ts"
  env       = "dev"
}

# Longest possible. _ delimiter
module "testl-stage-stage-labels" {
  source = "../../"

  namespace = "test"
  name      = "lbls"
  env       = "prod"
  delimiter = "_"
}

data "aws_iam_policy_document" "test-policy" {
  statement {
    actions = [
      "sts:GetCallerIdentity"
    ]

    effect    = "Deny"
    resources = ["*"]
  }
}

resource "aws_iam_policy" "testl-stage-stage" {
  name_prefix = module.ts-dev-labels.id
  policy      = data.aws_iam_policy_document.test-policy.json
}

resource "aws_iam_policy" "ts-dev" {
  name_prefix = module.testl-stage-stage-labels.id
  policy      = data.aws_iam_policy_document.test-policy.json
}
