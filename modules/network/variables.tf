#Variáveis comuns

variable "aws_region" {}

variable "infra_name" {}

variable "subnet_az_nat_anchor"{
  default = "us-west-2a"
}

variable "subnet_azs" {
  default = ["us-west-2a", "us-west-2b", "us-west-2c", "us-west-2d"]
}
#######################################################################################

#Variáveis da VPC A

variable "cidr_block_a" {
  default = "10.10.0.0/16"
}

variable "public_subnets_a"{
  default = ["10.10.11.0/24","10.10.12.0/24","10.10.13.0/24","10.10.14.0/24"]
}

variable "private_subnets_a"{
  default = ["10.10.21.0/24","10.10.22.0/24","10.10.23.0/24","10.10.24.0/24"] 
}

variable "database_subnets_a"{
  default = ["10.10.31.0/24","10.10.32.0/24","10.10.33.0/24","10.10.34.0/24"]
}

variable "public_subnet_a_nat_anchor"{
  default = "10.10.10.240/28"
}
#######################################################################################3

#Variáveis da VPC B

variable "cidr_block_b" {
  default = "10.20.0.0/16"
}

variable "public_subnets_b"{
  default = ["10.20.11.0/24","10.20.12.0/24","10.20.13.0/24","10.20.14.0/24"]
}

variable "private_subnets_b"{
  default = ["10.20.21.0/24","10.20.22.0/24","10.20.23.0/24","10.20.24.0/24"] 
}

variable "database_subnets_b"{
  default = ["10.20.31.0/24","10.20.32.0/24","10.20.33.0/24","10.20.34.0/24"]
}

variable "public_subnet_b_nat_anchor"{
  default = "10.20.10.240/28"
}
#######################################################################################3

#Variáveis da VPC C

variable "cidr_block_c" {
  default = "10.30.0.0/16"
}

variable "public_subnets_c"{
  default = ["10.30.11.0/24","10.30.12.0/24","10.30.13.0/24","10.30.14.0/24"]
}

variable "private_subnets_c"{
  default = ["10.30.21.0/24","10.30.22.0/24","10.30.23.0/24","10.30.24.0/24"] 
}

variable "database_subnets_c"{
  default = ["10.30.31.0/24","10.30.32.0/24","10.30.33.0/24","10.30.34.0/24"]
}

variable "public_subnet_c_nat_anchor"{
  default = "10.30.10.240/28"
}