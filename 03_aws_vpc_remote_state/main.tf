terraform {

  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "julianometalsp-rs"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }



}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "Fenrir"
      managed-by = "Terraform"
    }
  }
}

