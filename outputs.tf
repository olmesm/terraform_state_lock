output "bucket_domain_name" {
  value       = aws_s3_bucket.state_bucket.bucket_domain_name
  description = "The FQDN for the bucket"
}

output "state_bucket" {
  value       = aws_s3_bucket.state_bucket
  description = "The state bucket details"
}
