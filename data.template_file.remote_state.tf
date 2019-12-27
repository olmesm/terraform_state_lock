data "template_file" "remote_state" {
  template = file("${path.module}/remote_state.tf.template")

  vars = {
    account_number = data.aws_caller_identity.current.account_id
    aws_region     = data.aws_region.current.name
    terraform_required_version     = var.terraform_required_version
    dynamodb_table = var.dynamodb_table
    aws_s3_bucket = var.aws_s3_bucket
    environment = var.common_tags.environment
  }
}
