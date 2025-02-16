terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
  region     = var.AWS_REGION

  assume_role {
    role_arn     = var.AWS_ROLE_ARN
    session_name = var.AWS_ROLE_SESSION_NAME
  }
}