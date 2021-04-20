# Shortest possible.
module "ts-dev-labels" {
  source = "../../"

  namespace = "ts"
  env       = "dev"
}

# Longest possible. _ delimiter
module "testl-stage-stage-labels" {
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

resource "aws_iam_policty" "testl-stage-stage" {
  name_prefix = module.ts-dev-labels.id
  policy      = data.aws_iam_policy_document.test-policy
}

resource "aws_iam_policty" "ts-dev" {
  name_prefix = module.testl-stage-stage-labels.id
  policy      = data.aws_iam_policy_document.test-policy
}
