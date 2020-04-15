output "VPC_ID" {
  value = module.vpc.VPC_ID
}

output "PUBLIC_SUBNETS" {
  value = module.vpc.PUBLIC_SUBNETS
}

output "PRIVATE_SUBNETS" {
  value = module.vpc.PRIVATE_SUBNETS
}

output "MGMT_VPC_ID" {
  value = module.vpc.MGMT_VPC_ID
}
