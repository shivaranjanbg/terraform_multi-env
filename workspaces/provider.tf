terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
  bucket = "81shiva-remote-state"
  key    = "workspaces"
  region = "us-east-1"
  dynamodb_table = "81s-lock" 
  }
}



provider "aws" {
  # Configuration options
  region= "us-east-1"
}
