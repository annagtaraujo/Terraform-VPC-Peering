#NAT GW e EIP da VPC A

resource "aws_eip" "infra_eip_a"{
    vpc = true

    tags = {
        Name = format("%s-vpc-a-eip", var.infra_name)
    }
}

resource "aws_nat_gateway" "nat_a"{
    allocation_id = aws_eip.infra_eip_a.id
    subnet_id     = aws_subnet.vpc-public-subnet-a[0].id 
    tags = {
        Name = format("%s-vpc-a-nat-gw", var.infra_name)
    }

    depends_on = [
        aws_vpc.infra_vpc_a,
        aws_eip.infra_eip_a
    ]
}
################################################################################3

#NAT GW e EIP da VPC B

resource "aws_eip" "infra_eip_b"{
    vpc = true

    tags = {
        Name = format("%s-vpc-b-eip", var.infra_name)
    }
}

resource "aws_nat_gateway" "nat_b"{
    allocation_id = aws_eip.infra_eip_b.id
    subnet_id     = aws_subnet.vpc-public-subnet-b[0].id 
    tags = {
        Name = format("%s-vpc-b-nat-gw", var.infra_name)
    }

    depends_on = [
        aws_vpc.infra_vpc_b,
        aws_eip.infra_eip_b
    ]
}
################################################################################3

#NAT GW e EIP da VPC C

resource "aws_eip" "infra_eip_c"{
    vpc = true

    tags = {
        Name = format("%s-vpc-c-eip", var.infra_name)
    }
}

resource "aws_nat_gateway" "nat_c"{
    allocation_id = aws_eip.infra_eip_c.id
    subnet_id     = aws_subnet.vpc-public-subnet-c[0].id 
    tags = {
        Name = format("%s-vpc-c-nat-gw", var.infra_name)
    }

    depends_on = [
        aws_vpc.infra_vpc_c,
        aws_eip.infra_eip_c
    ]
}