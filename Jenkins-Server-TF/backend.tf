terraform {
  backend "s3" {
    bucket         = "my-eksaws-basket1"
    region         = "eu-west-2"
    key            = "End-to-End-Kubernetes-Three-Tier-Project/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "lock-terra"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}