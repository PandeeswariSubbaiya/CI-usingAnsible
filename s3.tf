resource "aws_s3_bucket" "mybucket" {"
  acl    = "public-read"
  key = "Mumbai_Region/statefile"
  tags= {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
}
