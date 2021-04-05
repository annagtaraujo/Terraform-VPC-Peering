#instância pública

resource "aws_instance" "vpc_a_prod_1" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.vpc-public-subnet-a[0].id
  vpc_security_group_ids     = [aws_security_group.sec-group-vpc-a-tcp.id, aws_security_group.sec-group-vpc-a-icmp.id]
  key_name                    = "anna-lab"
  private_ip                  = "10.10.11.10"

  tags = {
    Name = "vpc_a_prod_1"
  }

  depends_on = [
    aws_vpc.infra_vpc_a
  ]
}

resource "aws_instance" "vpc_b_prod_1" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.vpc-public-subnet-b[0].id
  vpc_security_group_ids     = [aws_security_group.sec-group-vpc-b-tcp.id, aws_security_group.sec-group-vpc-b-icmp.id]
  key_name                    = "anna-lab"
  private_ip                  = "10.20.11.10"

  tags = {
    Name = "vpc_b_prod_1"
  }

  depends_on = [
    aws_vpc.infra_vpc_b
  ]
}

resource "aws_instance" "vpc_c_prod_1" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.vpc-public-subnet-c[0].id
  vpc_security_group_ids     = [aws_security_group.sec-group-vpc-c-tcp.id, aws_security_group.sec-group-vpc-c-icmp.id]
  key_name                    = "anna-lab"
  private_ip                  = "10.30.11.10"

  tags = {
    Name = "vpc_c_prod_1"
  }

  depends_on = [
    aws_vpc.infra_vpc_c
  ]
}
##############################################################################

#Instância privada

resource "aws_instance" "vpc_a_priv_1" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.vpc-private-subnet-a[0].id
  vpc_security_group_ids     = [aws_security_group.sec-group-vpc-a-tcp.id, aws_security_group.sec-group-vpc-a-icmp.id]
  key_name                    = "anna-lab"
  private_ip                  = "10.10.21.10"

  tags = {
    Name = "vpc_a_priv_1"
  }

  depends_on = [
    aws_vpc.infra_vpc_a
  ]
}

resource "aws_instance" "vpc_b_priv_1" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.vpc-private-subnet-b[0].id
  vpc_security_group_ids     = [aws_security_group.sec-group-vpc-b-tcp.id, aws_security_group.sec-group-vpc-b-icmp.id]
  key_name                    = "anna-lab"
  private_ip                  = "10.20.21.10"

  tags = {
    Name = "vpc_b_priv_1"
  }

  depends_on = [
    aws_vpc.infra_vpc_b
  ]
}

resource "aws_instance" "vpc_c_priv_1" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.vpc-private-subnet-c[0].id
  vpc_security_group_ids     = [aws_security_group.sec-group-vpc-c-tcp.id, aws_security_group.sec-group-vpc-c-icmp.id]
  key_name                    = "anna-lab"
  private_ip                  = "10.30.21.10"

  tags = {
    Name = "vpc_c_priv_1"
  }

  depends_on = [
    aws_vpc.infra_vpc_c
  ]
}
