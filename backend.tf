terraform {
  backend "s3" {
    bucket = "pandeeswari-terraform-statefile"
    key = "Mumbai_Region/statefile"
    region = "ap-south-1"
  }
}
