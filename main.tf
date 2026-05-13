terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
 
provider "aws" {
  region = "us-east-1"
}
 
resource "aws_s3_bucket" "managed" {
  bucket = "state-ops-managed-bucket-francevanmaanen"
  
  tags = {
    Name      = "Managed Bucket"
    ManagedBy = "Terraform"
  }
}
 
resource "aws_s3_bucket" "primary" {
  bucket = "state-ops-primary-francevanmaanen"
  
  tags = {
    Name = "Example 1"
  }
}
 
resource "aws_s3_bucket" "example2" {
  bucket = "state-ops-example2-francevanmaanen-dev"
  
  tags = {
    Name = "Example 2"
  }
}

resource "aws_s3_bucket" "imported" {
  bucket = "state-ops-unmanaged-francevanmaanen"
  
  tags = {
    Name      = "Imported Bucket"
    ManagedBy = "Terraform"
  }
}
