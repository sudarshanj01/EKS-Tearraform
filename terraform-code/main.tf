module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  cluster_addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
    eks-pod-identity-agent = {
      most_recent = true
    }

  }

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  eks_managed_node_group_defaults = {
    disk_size      = 50
    instance_types = ["m6i.large", "m5.large", "m5n.large", "m5zn.large"]
  }

  eks_managed_node_groups = {
    tf-node-group = {
      min_size     = 1
      max_size     = 3
      desired_size = 2

      instance_types = ["t3.large", "t3.medium"]
      capacity_type  = "SPOT"

      labels = {
        Environment = "test"
      }
    }
  }

  enable_cluster_creator_admin_permissions = true
  authentication_mode = "API_AND_CONFIG_MAP"
}
