resource "aws_vpc_peering_connection" "mgmt-to-nonprod" {
  peer_vpc_id   = aws_vpc.main.id
  vpc_id        = var.MGMT_VPC_ID
  auto_accept   = true

  tags = {
    Name = "mgmt-to-nonprod"
  }
}
