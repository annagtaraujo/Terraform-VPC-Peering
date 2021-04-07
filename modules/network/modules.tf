module "vpc_peering"{           #child module de network. Vou exportar para lá meus VPC IDs
    source = "../connection"
    instance_id_a = aws_vpc.infra_vpc_a.id
    instance_id_b = aws_vpc.infra_vpc_b.id
    instance_id_c = aws_vpc.infra_vpc_c.id
    infra_name = var.infra_name
}
