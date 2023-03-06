terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.57.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  //access_key = "AKIAUEYPFBJKFKE66SOM"
  //secret_key = "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"
}

terraform {
  backend "s3" {
    bucket = "pandeeswari-terraform-statefile"
   key = "Mumbai_Region/statefile"
   region = "ap-south-1"
 }
}
