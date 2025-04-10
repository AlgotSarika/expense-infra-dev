terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.89.0"
    }
  }

  backend "s3" {
    bucket = "45s-tf-remote-state-dev"
    key = "expense-dev-cdn" #you should have unique key with in the bucket, same key should not be used in other repos
    region = "us-east-1"
    dynamodb_table = "45s-tf-remote-state-dev"
    
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}