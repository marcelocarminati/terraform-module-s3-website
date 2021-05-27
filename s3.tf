resource "aws_s3_bucket" "main" {
  bucket = var.bucket_name
  acl    = "public-read"

  website {
    index_document = var.website_index_document
    error_document = var.website_error_document
  }

  cors_rule {
    allowed_headers = var.cors_allowed_headers
    allowed_methods = var.cors_allowed_methods
    allowed_origins = var.cors_allowed_origins
    expose_headers  = ["ETag"]
    max_age_seconds = var.cors_max_age_seconds
  }

  versioning {
    enabled = var.versioning
  }
}

resource "aws_s3_bucket_policy" "main" {
  bucket = aws_s3_bucket.main.id

  policy = jsonencode({
    Version = "2012-10-17"
    Id      = "policy_s3_website_${var.bucket_name}"
    Statement = [
      {
        Sid       = "policy_s3_website_${var.bucket_name}"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource = [
          aws_s3_bucket.main.arn,
          "${aws_s3_bucket.main.arn}/*",
        ]
      },
    ]
  })
}