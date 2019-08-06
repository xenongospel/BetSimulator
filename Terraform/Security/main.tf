module "keypair" {
  source "./key-pair"

}

module "kms" {
  source "./kms"

}

module "pem" {
  source "./pem"

}

module "shield" {
  source "./shield"

}

module "waf" {
  source "./waf"

}

module "security-groups" {
  source "./security-groups"

}
