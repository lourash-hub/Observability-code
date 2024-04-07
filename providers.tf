terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  # backend "remote" {
  #       hostname     = "app.terraform.io"
  #       organization = "<YOUR_ORGANIZATION_NAME>"
  #       workspaces {
  #           name = "<YOUR_WORKSPACE_NAME>"
  #       }
  #   }

}


provider "aws" {
    region = "us-east-1"
    access_key = var.access_key
    secret_key = var.secret_key
}
