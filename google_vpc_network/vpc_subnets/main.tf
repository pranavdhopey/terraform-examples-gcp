/******************************************
	VPC configuration
 *****************************************/
module "vpc" {
  source                  = "../modules/vpc"
  project_id              = var.project_id
  network_name            = var.network_name
  routing_mode            = var.routing_mode
  description             = var.description
  shared_vpc_host         = false
  auto_create_subnetworks = false
  mtu                     = var.mtu
}

/******************************************
	Subnet configuration
 *****************************************/
module "subnets" {
  source           = "../modules/subnets"
  project_id       = var.project_id
  network_name     = module.vpc.network_name
  subnets          = var.subnets
  secondary_ranges = var.secondary_ranges
}

