#Route Tables e Associations da VPC A

resource "aws_route_table" "public_table_a" {
  vpc_id = aws_vpc.infra_vpc_a.id
  
  depends_on = [
    aws_vpc.infra_vpc_a#,
    #module.vpc_peering
    ]
  
  tags = {
    Name = format("%s-vpc-a-pb-table", var.infra_name)
    }
}

resource "aws_route_table" "private_table_a" {
  vpc_id = aws_vpc.infra_vpc_a.id

  depends_on = [
    aws_vpc.infra_vpc_a#,
    #module.vpc_peering
  ]

    tags = {
    Name = format("%s-vpc-a-pv-table", var.infra_name)
    }
}

resource "aws_route" "public_internet_gateway_a" {
  route_table_id         = aws_route_table.public_table_a.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw_a.id
  #vpc_peering_connection_id = module.vpc_peering.peer_a_to_b_id

  timeouts {
    create = "5m"
  }
}

resource "aws_route" "private_internet_gateway_a" {
  route_table_id         = aws_route_table.private_table_a.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id             = aws_nat_gateway.nat_a.id
  #vpc_peering_connection_id = module.vpc_peering.peer_a_to_b_id

  timeouts {
    create = "5m"
  }
}

resource "aws_route_table_association" "public_a"{  
   count = 4
   subnet_id = aws_subnet.vpc-public-subnet-a[count.index].id
   route_table_id = aws_route_table.public_table_a.id

   depends_on = [
     aws_subnet.vpc-public-subnet-a,
     aws_vpc.infra_vpc_a
   ]
}

resource "aws_route_table_association" "public_a_nat_anchor"{  
   subnet_id = aws_subnet.vpc-public-subnet-a-nat-anchor.id
   route_table_id = aws_route_table.public_table_a.id

   depends_on = [
     aws_subnet.vpc-public-subnet-a-nat-anchor,
     aws_vpc.infra_vpc_a
   ]
}
######################################################################################

#Route Tables e Associations da VPC B

resource "aws_route_table" "public_table_b" {
  vpc_id = aws_vpc.infra_vpc_b.id
  
  depends_on = [
    aws_vpc.infra_vpc_b#,
    #module.vpc_peering
    ]
  
  tags = {
    Name = format("%s-vpc-b-pb-table", var.infra_name)
    }
}

resource "aws_route_table" "private_table_b" {
  vpc_id = aws_vpc.infra_vpc_b.id

  depends_on = [
    aws_vpc.infra_vpc_b#,
    #module.vpc_peering
  ]

    tags = {
    Name = format("%s-vpc-b-pv-table", var.infra_name)
    }
}

resource "aws_route" "public_internet_gateway_b" {
  route_table_id         = aws_route_table.public_table_b.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw_b.id
  #vpc_peering_connection_id = module.vpc_peering.peer_a_to_b_id

  timeouts {
    create = "5m"
  }
}

resource "aws_route" "private_internet_gateway_b" {
  route_table_id         = aws_route_table.private_table_b.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id             = aws_nat_gateway.nat_b.id
  #vpc_peering_connection_id = module.vpc_peering.peer_a_to_b_id

  timeouts {
    create = "5m"
  }
}

resource "aws_route_table_association" "public_b"{  
   count = 4
   subnet_id = aws_subnet.vpc-public-subnet-b[count.index].id
   route_table_id = aws_route_table.public_table_b.id

   depends_on = [
     aws_subnet.vpc-public-subnet-b,
     aws_vpc.infra_vpc_b
   ]
}

resource "aws_route_table_association" "public_b_nat_anchor"{  
   subnet_id = aws_subnet.vpc-public-subnet-b-nat-anchor.id
   route_table_id = aws_route_table.public_table_b.id

   depends_on = [
     aws_subnet.vpc-public-subnet-b-nat-anchor,
     aws_vpc.infra_vpc_b
   ]
}
######################################################################################

#Route Tables e Associations da VPC C

resource "aws_route_table" "public_table_c" {
  vpc_id = aws_vpc.infra_vpc_c.id
  
  depends_on = [
    aws_vpc.infra_vpc_c#,
    #module.vpc_peering
    ]
  
  tags = {
    Name = format("%s-vpc-c-pb-table", var.infra_name)
    }
}

resource "aws_route_table" "private_table_c" {
  vpc_id = aws_vpc.infra_vpc_c.id

  depends_on = [
    aws_vpc.infra_vpc_c#,
    #module.vpc_peering
  ]

    tags = {
    Name = format("%s-vpc-c-pv-table", var.infra_name)
    }
}

resource "aws_route" "public_internet_gateway_c" {
  route_table_id         = aws_route_table.public_table_c.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw_c.id
  #vpc_peering_connection_id = module.vpc_peering.peer_a_to_c_id

  timeouts {
    create = "5m"
  }
}

resource "aws_route" "private_internet_gateway_c" {
  route_table_id         = aws_route_table.private_table_c.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id             = aws_nat_gateway.nat_c.id
  #vpc_peering_connection_id = module.vpc_peering.peer_a_to_c_id

  timeouts {
    create = "5m"
  }
}

resource "aws_route_table_association" "public_c"{  
   count = 4
   subnet_id = aws_subnet.vpc-public-subnet-c[count.index].id
   route_table_id = aws_route_table.public_table_c.id

   depends_on = [
     aws_subnet.vpc-public-subnet-c,
     aws_vpc.infra_vpc_c
   ]
}

resource "aws_route_table_association" "public_c_nat_anchor"{  
   subnet_id = aws_subnet.vpc-public-subnet-c-nat-anchor.id
   route_table_id = aws_route_table.public_table_c.id

   depends_on = [
     aws_subnet.vpc-public-subnet-c-nat-anchor,
     aws_vpc.infra_vpc_c
   ]
}
