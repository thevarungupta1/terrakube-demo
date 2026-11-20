variable "bucket_name" {
  type        = string
  description = "Globally unique S3 bucket name"
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to the bucket"
  default     = {}
}

variable "force_destroy" {
  type        = bool
  description = "Allow non-empty delete (labs only)"
  default     = true
}