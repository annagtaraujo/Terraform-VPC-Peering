variable "aws_region" {
  description = "Região da AWS da infra"
  default = "us-west-2"
}
variable "infra_name" {
  type = string
  description = "Nome da infra"
  default = "banking-network"
}
