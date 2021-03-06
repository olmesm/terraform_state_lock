resource "aws_dynamodb_table" "dynamodb_state_lock" {
  name           = "${var.dynamodb_table}--${var.common_tags.environment}"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = var.common_tags
}
