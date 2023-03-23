module this {

  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = var.bucket
  acl = var.acl
  tags = var.tags
}

resource "aws_s3_bucket_objects" "bucket_object" {
  count = length(var.bucket.objects)

  bucket = module.this.this_bucket_s3_id
  key = var.bucket_objects[count.index]
}