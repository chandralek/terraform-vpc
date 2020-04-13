resource "aws_subnet" "private-subnets" {
  count      = length(data.aws_availability_zones.available.names)
  vpc_id     = aws_vpc.main.id
  cidr_block = cidrsubnet(var.VPC_CIDR,8 ,count.index )
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.TAGS["ENV"]}-subnet-${count.index+1}"
  }
}

resource "aws_subnet" "public-subnets" {
  count      = length(data.aws_availability_zones.available.names)
  vpc_id     = aws_vpc.main.id
  cidr_block = cidrsubnet(var.VPC_CIDR,8 ,count.index+length(data.aws_availability_zones.available.names))
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.TAGS["ENV"]}-subnet-${count.index+1}"
  }
}