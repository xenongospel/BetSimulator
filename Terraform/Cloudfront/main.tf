module "cloudfront" {
  source "./cloudfront"
}

module "shield" {
  source "./shield"

}

module "waf" {
  source "./waf"

}
