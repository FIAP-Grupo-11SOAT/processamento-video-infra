resource "aws_s3_bucket" "upload_bucket" {
  bucket = var.bucket_name
  tags   = merge(var.tags, { Name = var.bucket_name })
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.upload_bucket.id

  versioning_configuration {
    status = var.versioning ? "Enabled" : "Suspended"
  }
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.upload_bucket.id

  block_public_acls       = var.public
  block_public_policy     = var.public
  ignore_public_acls      = var.public
  restrict_public_buckets = var.public
}

