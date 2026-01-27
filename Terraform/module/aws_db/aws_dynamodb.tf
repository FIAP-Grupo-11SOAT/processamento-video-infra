resource "aws_dynamodb_table" "upload_table" {
  name           = "upload"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5

  hash_key  = "idEmail"
  range_key = "idUpload"

  attribute {
    name = "idEmail"
    type = "S"
  }

  attribute {
    name = "idUpload"
    type = "S"
  }

  tags = {
    Name = "upload"
  }
}