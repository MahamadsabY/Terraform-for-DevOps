terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.67.0"
    }
  }

  backend "s3" {
    bucket = "mammu-812363"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "mammu-table-9212"
    
  }
}