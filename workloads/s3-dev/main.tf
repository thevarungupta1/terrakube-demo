module "private_bucket" {
  source  = "terrakube-registry.20-219-100-132.sslip.io/lab/s3-private-bucket/aws"
  version = "1.0.0"

  bucket_name = var.bucket_name

  tags = {
    Environment = var.environment
    ManagedBy   = "terrakube"
    Lab         = "20-private-s3"
  }
}