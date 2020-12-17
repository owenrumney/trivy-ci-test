resource "aws_s3_bucket" "acme_bucket" {
  bucket = var.bucket_name

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket_acl" "acme_bucket_acl" {
  bucket = aws_s3_bucket.acme_bucket.bucket

  acl    = "authenticated-read"
}