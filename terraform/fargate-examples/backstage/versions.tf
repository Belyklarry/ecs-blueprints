terraform {
  required_version = ">= 1.5.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.43"
    }
  }
  backend "s3" {
    bucket         = "larryterraformstatebvcket"
    key            = "terraform-backstage.tfstate"
    profile        = "default"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "larryterraformstate"
  }
}