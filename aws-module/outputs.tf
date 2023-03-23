output "s3_bucket_arn" {
  value = module.this.s3_bucket_arn
  description = "arn of bucket"
}

output "s3_bucket_id" {
  description = "the name of bucket"
  value = module.this.s3_bucket_id
}
