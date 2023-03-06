terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.57.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  //access_key = "AKIAUEYPFBJKFKE66SOM"
  //secret_key = "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"
}

terraform {
  backend "s3" {
    bucket = "northvirginabucket1"
   key = "North_Virginia_Keypair/statefile"
   region = "us-east-1"
 }
}
