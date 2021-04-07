variable "infra_name" {}

variable "instance_id_a"{
    description = "Recebendo o VPC ID de A vindo do módulo Network"
    type = string
}

variable "instance_id_b"{
    description = "Recebendo o VPC ID de B vindo do módulo Network"
    type = string
}

variable "instance_id_c"{
    description = "Recebendo o VPC ID de C vindo do módulo Network"
    type = string
}