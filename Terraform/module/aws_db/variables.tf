# DynamoDB configuration
variable "dynamodb_table_name" {
  description = "DynamoDB table name used to store MongoDB-like documents"
  type        = string
  default     = "lanchonete_mongo_like"
}

variable "dynamodb_billing_mode" {
  description = "Billing mode for DynamoDB (PAY_PER_REQUEST or PROVISIONED)"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "dynamodb_enable_pitr" {
  description = "Enable point-in-time recovery for DynamoDB table"
  type        = bool
  default     = true
}

variable "dynamodb_enable_sse" {
  description = "Enable server-side encryption for DynamoDB table"
  type        = bool
  default     = true
}

variable "dynamodb_ttl_attribute" {
  description = "Attribute name to use as TTL (epoch seconds). Empty disables TTL"
  type        = string
  default     = ""
}

variable "dynamodb_gsis" {
  description = "List of GSIs to create. Each entry is an object with name, hash_key, optional range_key"
  type = list(object({
    name      = string
    hash_key  = string
    range_key = optional(string)
  }))
  default = []
}

variable "dynamodb_tags" {
  description = "Additional tags to apply to the DynamoDB table"
  type        = map(string)
  default     = {}
}
