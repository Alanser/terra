terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.8.0"
    }
  }
  backend "s3" {}
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "dev" {
  cidr_block = "10.2.0.0/16"
}