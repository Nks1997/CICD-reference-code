################################
# Terraform Block
################################
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

################################
# Provider Block
################################
provider "aws" {
  region = var.region
}

################################
# Variables Block
################################
variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "S3 bucket name (must be globally unique)"
  type        = string
  default     = "tf-demo-bucket-123456"
}

################################
# Resource Block
################################
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "Terraform Demo Bucket"
    Environment = "Dev"
  }
}

################################
# Output Block
################################
output "bucket_arn" {
  description = "S3 Bucket ARN"
  value       = aws_s3_bucket.bucket.arn
}
