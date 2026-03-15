resource "aws_instance" "devops_ec2" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.devops_subnet.id
  key_name      = "id_rsa.pem"

  tags = {
    Name = "devops-ec2"
  }
}
