terraform {
  required_version = ">= 1.6.3"
  backend "s3" {
    bucket = "todo-app-tfstate"
    key    = "iam/terraform.tfstate"
    region = "ap-northeast-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
