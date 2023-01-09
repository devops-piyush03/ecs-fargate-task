provider "aws" {
  region = var.region
}

module "ecs" {
  source = "./modules/ecs"
  vpc_id = module.networking.vpc_id
  public_subnet = flatten([module.networking.public_subnets_id])
  private_subnet = flatten([module.networking.private_subnets_id])
  lb_url = module.ecs.Loadbalancer_url
}
module "networking" {
  source = "./modules/networking"
}
module "rds" {
  vpc_id = module.networking.vpc_id
  private_subnet = flatten([module.networking.private_subnets_id])
  source = "./modules/rds"
  
}
