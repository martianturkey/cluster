resource "aws_vpc" "cluster" {
  cidr_block = var.cluster_cidr

  tags = {
    Name = var.cluster_name
  }
}

resource "aws_subnet" "main" {
  for_each   = var.private_cidr
  vpc_id     = aws_vpc.cluster.id
  cidr_block = each.value

  tags = {
    Name    = "${var.cluster_name}_${each.key}"
  }
}
