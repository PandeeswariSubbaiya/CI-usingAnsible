terraform {
  backend "s3" {
    bucket = "pandeeswari-terraform-statefile"
    key = "server_name/statefile"
    region = "ap-south-1"
  }
}  
