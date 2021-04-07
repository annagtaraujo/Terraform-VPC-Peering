resource "aws_key_pair" "ingress-keypair" {
  key_name   = "anna-lab"
  public_key = var.public_key

  tags = {
      Name = format("%s-publick-key", var.infra_name)
  }
}
