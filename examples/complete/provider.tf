terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.89.0"
    }
  }

  backend "s3" {
    bucket = "daws.76-remote-state"
    key = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "daws.76-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}