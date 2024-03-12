## EKS Terraform Configuration
This repository contains Terraform configuration to provision an Amazon EKS (Elastic Kubernetes Service) cluster along with managed node groups and associated IAM roles and policies. The configuration is designed to be modular and customizable based on your requirements.

Usage
The configuration defines the following modules and resources:

Module: "eks"
The eks module provisions an Amazon EKS cluster along with managed node groups.

Module Parameters:
cluster_name: The name of the EKS cluster.
cluster_version: The version of Kubernetes for the cluster.
cluster_endpoint_public_access: Determines whether or not the cluster's Kubernetes API server endpoint is accessible from the public internet.
cluster_addons: Add-ons configuration for the EKS cluster.
vpc_id: The ID of the VPC where the EKS cluster will be deployed.
subnet_ids: The IDs of the subnets in which to deploy the EKS cluster and its resources.
enable_irsa: Enables IAM Roles for Service Accounts (IRSA) for the cluster.
eks_managed_node_group_defaults: Default configurations for managed node groups.
eks_managed_node_groups: Configuration for managed node groups within the EKS cluster.
access_entries: Access control entries for the cluster.
tags: Tags to apply to AWS resources created by the module.
