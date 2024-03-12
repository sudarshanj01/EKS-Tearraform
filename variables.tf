variable "default-region" {
  type    = string
  default = "us-east-1"
}

variable "cluster_name" {
  type    = string
  default = "demo-cluster-through-tf"
}

variable "cluster_version" {
  type    = number
  default = 1.29
}

variable "node_instance_type" {
  type    = string
  default = "t3.medium"
}


variable "subnet_ids" {
  type = list(string)
  default = [
    "subnet-0439c5d86dbe5f6c0",
    "subnet-02bcbdbec9318ff5d",
  ]
}

variable "vpc_id" {
    type = string
    default = "vpc-04bbf805b163a5930"
}
