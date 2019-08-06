module "Network" {
  source = "./Network"

  SERVICE = "${var.SERVICE}"
  ENVIRONMENT = "${var.ENVIRONMENT}"
  REGION = "${var.REGION}"
  MASK = "${var.MASK}"
  CIDR_BLOCK = "${var.CIDR_BLOCK}"
  CIDR_BLOCK_PREFIX = "${var.SUBNET_CIDR_BLOCK}"
  INTERNET_GATEWAY_ROUTE_IP_ADDRESS = "${var.IGW_IP_ADDRESS}"
  NAT_GATEWAY_ROUTE_IP_ADDRESS = "${var.NGW_IP_ADDRESS}"
}

module "Security" {
  source = "./Security"

  SERVICE = "${var.SERVICE}"
  ENVIRONMENT = "${var.ENVIRONMENT}"
  REGION = "${var.REGION}"
}
