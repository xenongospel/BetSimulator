module "elastic-ip" {
  source                                = "./modules/elastic_ip"
}

module "internet-gateway" {
  source                                = "./modules/internet_gateway"

  SERVICE                               = "${var.SERVICE}"
  ENVIRONMENT                           = "${var.ENVIRONMENT}"
  VPC_ID                                = "${module.vpc.vpc_id}"
}

module "nat-gateway" {
  source                                = "./modules/nat_gateway"

  SERVICE                               = "${var.SERVICE}"
  ENVIRONMENT                           = "${var.ENVIRONMENT}"
  NAT_GATEWAY_EIP_ID                    = "${module.elastic-ip.ngw_eip_id}"
  PUBLIC_SUBNET_A_ID                    = "${module.subnets.public_subnet_a_id}"
}

module "route-tables" {
  source                                = "./modules/route_tables"

  SERVICE                               = "${var.SERVICE}"
  ENVIRONMENT                           = "${var.ENVIRONMENT}"
  VPC_ID                                = "${module.vpc.vpc_id}"
  NAT_GATEWAY_ID                        = "${module.nat-gateway.ngw_id}"
  INTERNET_GATEWAY_ID                   = "${module.internet-gateway.igw_id}"
  NAT_GATEWAY_ROUTE_IP_ADDRESS          = "${var.NAT_GATEWAY_ROUTE_IP_ADDRESS}"
  INTERNET_GATEWAY_ROUTE_IP_ADDRESS     = "${var.INTERNET_GATEWAY_ROUTE_IP_ADDRESS}"
}

module "route-table-associations" {
  source                                = "./modules/route_table_associations"

  PUBLIC_SUBNET_A                       = "${module.subnets.public_subnet_a_id}"
  PUBLIC_SUBNET_B                       = "${module.subnets.public_subnet_b_id}"
  PUBLIC_SUBNET_C                       = "${module.subnets.public_subnet_c_id}"
  PRIVATE_SUBNET_A                      = "${module.subnets.private_subnet_a_id}"
  PRIVATE_SUBNET_B                      = "${module.subnets.private_subnet_b_id}"
  PRIVATE_SUBNET_C                      = "${module.subnets.private_subnet_c_id}"

  PUBLIC_ROUTE_TABLE_A                  = "${module.route-tables.public_route_table_a_id}"
  PUBLIC_ROUTE_TABLE_B                  = "${module.route-tables.public_route_table_b_id}"
  PUBLIC_ROUTE_TABLE_C                  = "${module.route-tables.public_route_table_c_id}"
  PRIVATE_ROUTE_TABLE_A                 = "${module.route-tables.private_route_table_a_id}"
  PRIVATE_ROUTE_TABLE_B                 = "${module.route-tables.private_route_table_b_id}"
  PRIVATE_ROUTE_TABLE_C                 = "${module.route-tables.private_route_table_c_id}"

}

module "subnets" {
  source                                = "./modules/subnets"

  SERVICE                               = "${var.SERVICE}"
  ENVIRONMENT                           = "${var.ENVIRONMENT}"
  REGION                                = "${var.REGION}"
  MASK                                  = "${var.MASK}"
  VPC_ID                                = "${module.vpc.vpc_id}"
  CIDR_BLOCK_PREFIX                     = "${var.CIDR_BLOCK_PREFIX}"
}

module "vpc" {
  source                                = "./modules/vpc"

  MASK                                  = "${var.MASK}"
  SERVICE                               = "${var.SERVICE}"
  CIDR_BLOCK                            = "${var.CIDR_BLOCK}"
  ENVIRONMENT                           = "${var.ENVIRONMENT}"
}


