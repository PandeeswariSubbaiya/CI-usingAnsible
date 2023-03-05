terraform {
  backend "s3" {
    bucket = "Pandeeswari-terraform-statefile"
    key = "server_name/statefile"
    region = "ap-south-1"
  }
}  
