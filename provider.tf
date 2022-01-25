provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Name = "ziyotek-devops-class"
      Environment = "dev"
    }
  }
}


terraform {

  #use the next block if you wish to define a backend s3 state file and dynamodb state lock:
  #   backend "s3" {
  #     bucket         = "rady-bucket-1-0-0"
  #     key            = "ec2-example/devops/terraform.tfstate"
  #     region         = "us-east-1"
  #    #dynamodb_table = "terraform-lock"
  #    #encrypt        = true
  #   }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.45"
    }
  }
}