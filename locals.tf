locals {
  # renovate: datasource=helm depName=aws-load-balancer-controller registryUrl=https://aws.github.io/eks-charts
  version = "3.1.0"

  # renovate: datasource=github-releases depName=kubernetes-sigs/gateway-api
  gateway_api_version = "1.5.0"

  yaml = replace(
    replace(
      replace(
        replace(
          file("${path.module}/aws-load-balancer-controller.yaml"),
        "__CLUSTER_NAME__", var.cluster_name),
      "__VPC_ID__", var.vpc_id),
    "__REGION__", var.region),
  "replicas: 2", "replicas: ${var.replicas}")

  gateway_api_crds = file("${path.module}/gateway-api-crds.yaml")
  lbc_gateway_crds = file("${path.module}/lbc-gateway-crds.yaml")
}
