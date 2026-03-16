resource "aws_instance" "devops_server" {
  ami = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.devops_sg.id]

  associate_public_ip_address = true
  key_name = "akash"

  tags = {
    Name = "devops-server"
  }
}
