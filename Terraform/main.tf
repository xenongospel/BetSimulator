module "Network" {
  source = "./Modules/Network"

  SERVICE = "${var.SERVICE}"
  ENVIRONMENT = "${var.ENVIRONMENT}"
  REGION = "${var.REGION}"
  CIDR_BLOCK = "${var.CIDR_BLOCK}"
  CIDR_BLOCK_PREFIX = "${var.SUBNET_CIDR_BLOCK}"
}
