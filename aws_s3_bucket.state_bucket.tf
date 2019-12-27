resource "aws_s3_bucket" "state_bucket" {
  bucket        = "${var.aws_s3_bucket}--${var.common_tags.environment}-${data.aws_caller_identity.current.account_id}"
  acl           = "private"
  force_destroy = "false"

  versioning {
    enabled    = true
    mfa_delete = var.mfa_delete
  }

  tags = var.common_tags
}
