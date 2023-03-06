resource "aws_instance" "myec2-NorthVirgina" {
  ami                    = "ami-0557a15b87f6559cf"
  instance_type          = "t2.micro"
  availability_zone = "us-east-1a"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  key_name = "North_Virginia_Keypair"

  tags = {
    name = "testec2"
  }
  provisioner "file" {
        source = "/home/ubuntu/testfile.txt"
        destination = "/home/ubuntu"
}
        connection {
                type = "ssh"
                host = self.public_ip
                user = "ubuntu"
                private_key = "/home/ubuntu/.ssh/id_rsa"
               // private_key = file("/home/ubuntu/.ssh/authorized_keys")
                timeout = "1m"
}
}
 //provisioner "local-exec" {
    //command = "echo ${aws_instance.myec2.public_ip} >> /etc/ansible/hosts"
  //}
resource "aws_key_pair" "deployer" {
  key_name = "var.North_Virginia_Keypair"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCdIKXg/PwWRqk4q5kRIRHckdhyaJLhLWGDdyaZqt9sS8kgPjFkdlD/xJplQQLddSeZfbmjQ1AgQJShidIz/1Vv9jyEQzYlmYc/poH/w8D9VzMSyM3d0Ovocfwu+G6TZj/tE+GB5INEGxFGKcvD+opDK2qauLxxl0+YO0CGbXRu1H7EjhSnhdIues5C/Is5aWD3H9khT4KBI7GprLitTLCX6P3Xz/O6Y7qknq2dYutsvTBb33OiZ1Gska2EeoNrTwBN6XNVx3SjVowgOKIEGW1WGvu094EH/IAlBKwVIEP2anvhN2ZftJ7CMJwjtGDigr9AbL5U4rJoxB3bm6uDdgL+jVkzhzuDqEYK/444ITa+O/SdumMiGmjBxdo5/RF5purzMYnH8mX+qaCdMLJocLqP32tXLbeTfyum6dAzBCh8Rv5Q6qG0EEDoTa3rnabAycfDC518RwptHXoOd1dmrrXQeOg1rN4bVokxm4O6olZHkzctmG5RnE3oldBAbqmx3K0= ubuntu@Jenkins"
}
