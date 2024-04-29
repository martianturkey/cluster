terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  default_tags {
    tags = {
      Creator = "terraform"
      Stack   = "iac"
    }
  }
  region = "eu-west-2"
}
