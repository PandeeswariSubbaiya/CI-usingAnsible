resource "aws_instance" "myec2-NorthVirgina" {
  ami                    = "ami-0557a15b87f6559cf"
  instance_type          = "t2.micro"
  availability_zone = "us-east-1a"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  key_name = "North_Virginia_Keypair"

  tags = {
    name = "testec2"
  }

 //provisioner "local-exec" {
    //command = "echo ${aws_instance.myec2.public_ip} >> /etc/ansible/hosts"
  //}
}
