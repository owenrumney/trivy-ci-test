resource "aws_s3_bucket" "acme_bucket" {
  bucket = "some bucket"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  acl = "authenticated-read"
} 

resource "aws_s3_bucket" "acme_bucket2" {
  bucket = "some bucket"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  acl = "authenticated-read"
}