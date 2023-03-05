terraform {
  backend "s3" {
    bucket = "pandeeswari-terraform-statefile"
    s3 backend = "yes"
    key = "server_name/statefile"
    region = "ap-south-1"
  }
}  
