terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.11.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "pandeeswari-terraform-statefile"
    key = "Mumbai_Region/statefile"
    region = "ap-south-1"
  }
}
