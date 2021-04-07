#VPC Peering entre VPC A e VPC B

resource "aws_vpc_peering_connection" "vpc_peer_a_to_b" {
  peer_vpc_id   = var.instance_id_b
  vpc_id        = var.instance_id_a
  auto_accept = true

  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }

  tags = {
    Name = format("%s-vpc_peer_a-b",var.infra_name)
  }
}
#######################################################################

#VPC Peering entre VPC A e VPC C

resource "aws_vpc_peering_connection" "vpc_peer_a_to_c" {
  peer_vpc_id   = var.instance_id_c
  vpc_id        = var.instance_id_a
  auto_accept = true

  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }

  tags = {
    Name = format("%s-vpc_peer_a-c",var.infra_name)
  }
}