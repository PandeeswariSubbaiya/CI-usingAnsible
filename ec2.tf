resource "aws_instance" "myec2" {
  ami                    = "ami-0f8ca728008ff5af4"
  instance_type          = "t2.micro"
  availability_zone = "ap-south-1a"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  key_name = "Mumbai_Region"

  tags = {
    name = "testec2"
  }

 //provisioner "local-exec" {
    //command = "echo ${aws_instance.myec2.public_ip} >> /etc/ansible/hosts"
  //}
}
