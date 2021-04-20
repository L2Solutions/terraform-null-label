# Shortest possible.
module "ts-dev" {
  source = "../../"

  namespace = "ts"
  env       = "dev"
}

# Longest possible. _ delimiter
module "testl-stage-stage" {
  source = "../../"

  namespace = "testl"
  env       = "stage"
  stage     = "stage"
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

resource "aws_iam_policty" "ts-dev" {
  name_prefix = module.ts-dev.id
  policy      = data.aws_iam_policy_document.test-policy
}

resource "aws_iam_policty" "ts-dev" {
  name_prefix = module.testl-stage-stage.id
  policy      = data.aws_iam_policy_document.test-policy
}
