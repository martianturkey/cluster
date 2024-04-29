variable "cluster_name" {
  type    = string
}

variable "cluster_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_cidr" {
  type = map
}
