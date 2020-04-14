resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.TAGS["ENV"]
  }
}

resource "aws_eip" "lb" {
  vpc      = true
}

