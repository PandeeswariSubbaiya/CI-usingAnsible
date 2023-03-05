provider "aws" {
    region = "ap-south-1"  
}

resource "aws_instance" "testing-ec2" {
  ami           = "ami-0f8ca728008ff5af4" # us-west-2
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
  }
}
