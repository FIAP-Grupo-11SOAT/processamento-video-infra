module "upload_bucket" {
  source = "./module/aws_s3"

  bucket_name = "upload-bucket-11soat"
  acl         = "public-read"
  versioning  = true
  tags = {
    Environment = "dev"
    Project     = "hackaton-11soat"
  }
  public = true
}

module "upload_table" {
  source = "./module/aws_db"
}