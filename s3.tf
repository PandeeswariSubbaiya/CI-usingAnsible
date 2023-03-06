resource "aws_s3_bucket" "mybucket" {
  bucket = "pandeeswari-terraform-statefile"
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
