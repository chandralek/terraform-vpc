module "vpc" {
  source      = "git::https://chandralekha882:Opcqa123!@github.com/chandralek/modules.git//vpc"
  VPC_CIDR    = var.VPC_CIDR
  TAGS        = var.TAGS
  MGMT_VPC_ID = var.MGMT_VPC_ID
}