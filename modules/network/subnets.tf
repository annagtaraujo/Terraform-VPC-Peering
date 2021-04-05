## Subnets da VPC A

resource "aws_subnet" "vpc-private-subnet-a" {
  count = 4
  vpc_id            = aws_vpc.infra_vpc_a.id
  cidr_block        = var.private_subnets_a[count.index]
  availability_zone = var.subnet_azs[count.index]

  tags              = {
    Name = format("banking-network-vpc-a-pv-%d", count.index)
    }

  depends_on = [aws_vpc.infra_vpc_a]
}

resource "aws_subnet" "vpc-public-subnet-a" {
  count = 4
  vpc_id            = aws_vpc.infra_vpc_a.id
  cidr_block        = var.public_subnets_a[count.index]             #cidrsubnet(var.cidr_block_a, 8, 21)
  availability_zone = var.subnet_azs[count.index]                   #format("%sa", var.aws_region)
  map_public_ip_on_launch = true
  
  tags              = {
    Name = format("banking-network-vpc-a-pb-%d", count.index)
    }

  depends_on = [aws_vpc.infra_vpc_a]
}

resource "aws_subnet" "vpc-database-subnet-a" {
  count = 4
  vpc_id            = aws_vpc.infra_vpc_a.id
  cidr_block        = var.database_subnets_a[count.index]             #cidrsubnet(var.cidr_block_a, 8, 21)
  availability_zone = var.subnet_azs[count.index]                   #format("%sa", var.aws_region)

  tags              = {
    Name = format("banking-network-vpc-a-db-%d", count.index)
    }

  depends_on = [aws_vpc.infra_vpc_a]
}

# resource "aws_subnet" "vpc-public-subnet-a-nat-anchor" {
#   vpc_id            = aws_vpc.infra_vpc_a.id
#   cidr_block        = var.public_subnet_a_nat_anchor           #cidrsubnet(var.cidr_block_a, 8, 21)
#   availability_zone = var.subnet_az_nat_anchor                   #format("%sa", var.aws_region)

#   tags              = {
#     Name = format("%s-vpc-a-pb-nat-anchor", var.infra_name)
#     }

#   depends_on = [aws_vpc.infra_vpc_a]
# }
###############################################################################

## Subnets da VPC B

resource "aws_subnet" "vpc-private-subnet-b" {
  count = 4
  vpc_id            = aws_vpc.infra_vpc_b.id
  cidr_block        = var.private_subnets_b[count.index]
  availability_zone = var.subnet_azs[count.index]

  tags              = {
    Name = format("banking-network-vpc-b-pv-%d", count.index)
    }

  depends_on = [aws_vpc.infra_vpc_b]
}

resource "aws_subnet" "vpc-public-subnet-b" {
  count = 4
  vpc_id            = aws_vpc.infra_vpc_b.id
  cidr_block        = var.public_subnets_b[count.index]             
  availability_zone = var.subnet_azs[count.index] 
  map_public_ip_on_launch = true                  

  tags              = {
    Name = format("banking-network-vpc-b-pb-%d", count.index)
    }

  depends_on = [aws_vpc.infra_vpc_b]
}

resource "aws_subnet" "vpc-database-subnet-b" {
  count = 4
  vpc_id            = aws_vpc.infra_vpc_b.id
  cidr_block        = var.database_subnets_b[count.index]             
  availability_zone = var.subnet_azs[count.index]                   

  tags              = {
    Name = format("banking-network-vpc-b-db-%d", count.index)
    }

  depends_on = [aws_vpc.infra_vpc_b]
}

# resource "aws_subnet" "vpc-public-subnet-b-nat-anchor" {
#   vpc_id            = aws_vpc.infra_vpc_b.id
#   cidr_block        = var.public_subnet_b_nat_anchor           
#   availability_zone = var.subnet_az_nat_anchor                   

#   tags              = {
#     Name = format("%s-vpc-b-pb-nat-anchor", var.infra_name)
#     }

#   depends_on = [aws_vpc.infra_vpc_b]
# }
###############################################################################

## Subnets da VPC C

resource "aws_subnet" "vpc-private-subnet-c" {
  count = 4
  vpc_id            = aws_vpc.infra_vpc_c.id
  cidr_block        = var.private_subnets_c[count.index]
  availability_zone = var.subnet_azs[count.index]

  tags              = {
    Name = format("banking-network-vpc-c-pv-%d", count.index)
    }

  depends_on = [aws_vpc.infra_vpc_c]
}

resource "aws_subnet" "vpc-public-subnet-c" {
  count = 4
  vpc_id            = aws_vpc.infra_vpc_c.id
  cidr_block        = var.public_subnets_c[count.index]             
  availability_zone = var.subnet_azs[count.index]  
  map_public_ip_on_launch = true                 

  tags              = {
    Name = format("banking-network-vpc-c-pb-%d", count.index)
    }

  depends_on = [aws_vpc.infra_vpc_c]
}

resource "aws_subnet" "vpc-database-subnet-c" {
  count = 4
  vpc_id            = aws_vpc.infra_vpc_c.id
  cidr_block        = var.database_subnets_c[count.index]             
  availability_zone = var.subnet_azs[count.index]                   

  tags              = {
    Name = format("banking-network-vpc-c-db-%d", count.index)
    }

  depends_on = [aws_vpc.infra_vpc_c]
}

# resource "aws_subnet" "vpc-public-subnet-c-nat-anchor" {
#   vpc_id            = aws_vpc.infra_vpc_c.id
#   cidr_block        = var.public_subnet_c_nat_anchor           
#   availability_zone = var.subnet_az_nat_anchor                   

#   tags              = {
#     Name = format("%s-vpc-c-pb-nat-anchor", var.infra_name)
#     }

#   depends_on = [aws_vpc.infra_vpc_c]
# }
