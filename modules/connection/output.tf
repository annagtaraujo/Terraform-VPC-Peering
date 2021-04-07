output "peer_a_to_b_id"{
   description = "Exportando o ID do Peer entre A e B para Network para a criação da route"
   value = aws_vpc_peering_connection.vpc_peer_a_to_b.id
}

output "peer_a_to_c_id"{
   description = "Exportando o ID do Peer entre A e C para Network para a criação da route"
   value = aws_vpc_peering_connection.vpc_peer_a_to_c.id
}
