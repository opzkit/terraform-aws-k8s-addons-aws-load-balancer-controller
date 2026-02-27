variable "cluster_name" {
  type        = string
  description = "Name of the Kubernetes cluster"
}

variable "vpc_id" {
  type        = string
  description = "ID of the VPC where the cluster runs"
}

variable "region" {
  type        = string
  description = "AWS region of the cluster"
}

variable "replicas" {
  type        = number
  default     = 2
  description = "Number of replicas for the AWS Load Balancer Controller"
}
