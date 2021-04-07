#VPC A

resource "aws_vpc" "infra_vpc_a"{
    cidr_block = var.cidr_block_a
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = {
        Name = format("%s-vpc-a",var.infra_name)
    }
}
#######################################################################################

#VPC B

resource "aws_vpc" "infra_vpc_b"{
    cidr_block = var.cidr_block_b
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = {
        Name = format("%s-vpc-b",var.infra_name)
    }
}
#######################################################################################

#VPC C

resource "aws_vpc" "infra_vpc_c"{
    cidr_block = var.cidr_block_c
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = {
        Name = format("%s-vpc-c",var.infra_name)
    }
}
