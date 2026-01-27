variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "upload-bucket-11soat"
}

variable "acl" {
  description = "Canned ACL to apply to the bucket"
  type        = string
  default     = "private"
}

variable "versioning" {
  description = "Enable versioning on the bucket"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Additional tags to add to the bucket"
  type        = map(string)
  default     = {}
}

variable "public" {
  description = "Whether the bucket should be public (when true creates a public access block override and a public bucket policy)"
  type        = bool
  default     = true
}
