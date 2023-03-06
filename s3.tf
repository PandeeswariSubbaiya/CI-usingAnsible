resource "aws_s3_bucket" "mybucket" {
  backend "s3" {
  bucket = "pandeeswari-terraform-statefile"
    region = "ap-south-1"
  acl    = "public-read"
  //website {
    //index_document = "hello.html"
  // routing_rules = <<EOF
//[{
    //"Condition": {
        //"KeyPrefixEquals": "docs/"
  //  },
   // "Redirect": {
       // "ReplaceKeyPrefixWith": "documents/"
   // }
//}]
//EOF
  }//

  tags= {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
}
