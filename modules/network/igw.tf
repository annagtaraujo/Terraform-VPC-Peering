# INTERNET GW da VPC A

resource "aws_internet_gateway" "igw_a" {
  vpc_id = aws_vpc.infra_vpc_a.id
  tags = {
      Name = format("%s-vpc-a-igw", var.infra_name)
  }
}
####################################################################################

# INTERNET GW da VPC B

resource "aws_internet_gateway" "igw_b" {
  vpc_id = aws_vpc.infra_vpc_b.id
  tags = {
      Name = format("%s-vpc-b-igw", var.infra_name)
  }
}
####################################################################################

# INTERNET GW da VPC C

resource "aws_internet_gateway" "igw_c" {
  vpc_id = aws_vpc.infra_vpc_c.id
  tags = {
      Name = format("%s-vpc-c-igw", var.infra_name)
  }
}