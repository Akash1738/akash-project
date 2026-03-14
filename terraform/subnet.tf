resource "aws_subnet" "devops_subnet" {
  vpc_id     = aws_vpc.devops_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "devops-subnet"
  }
}