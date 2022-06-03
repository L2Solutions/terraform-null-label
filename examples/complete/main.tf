provider "aws" {
  region = "us-east-2"
}

module "tenant" {
  source = "../../"

  tenant      = "tnt"
  environment = "dev"
}

module "tenant2" {
  source = "../../"

  tenant      = "tnt2"
  environment = "prod"
  project     = "prjct"
  delimiter   = "_"
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

resource "aws_iam_policy" "tenant" {
  name_prefix = module.tenant.id
  policy      = data.aws_iam_policy_document.test-policy.json
}

resource "aws_iam_policy" "tenant2" {
  name_prefix = module.tenant2.id
  policy      = data.aws_iam_policy_document.test-policy.json
}
