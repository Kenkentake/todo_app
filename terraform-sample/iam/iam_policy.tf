resource "aws_iam_policy" "deploy" {
  name        = "deploy"
  path        = "/"
  description = "deploy policy"
  policy      = file("iam_policies/deploy_policy.json")
}

resource "aws_iam_policy" "sample_ecs_instance_policy" {
  name        = "sample-ecs-instance-policy"
  path        = "/"
  description = ""
  policy      = file("iam_policies/ecs_instance_policy.json")
}

resource "aws_iam_user_policy_attachment" "deploy-attach" {
  user       = aws_iam_user.deploy-user.name
  policy_arn = aws_iam_policy.deploy.arn
}

resource "aws_iam_role_policy_attachment" "ecs_instance_role_attach" {
  role       = aws_iam_role.sample_ecs_instance_role.name
  policy_arn = aws_iam_policy.sample_ecs_instance_policy.arn
}
