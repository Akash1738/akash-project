resource "aws_instance" "devops_ec2" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_subnet.id

  associate_public_ip_address = true

  tags = {
    Name = "devops-ec2"
  }
}
