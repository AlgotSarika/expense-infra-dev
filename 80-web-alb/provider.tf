terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.89.0"
    }
  }

  backend "s3" {
    bucket = "45s-tf-remote-state-dev"
    key = "expense-dev-web-alb" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "45s-tf-remote-state-dev"
    
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}