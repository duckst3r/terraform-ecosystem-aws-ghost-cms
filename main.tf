#####
# Networking Module
#####

module "networking" {
  source = "./networking"

  enable_ha = false
  prefix    = local.name
  tags      = local.tags
}

#####
# Autoscaling Group Module
#####

module "asg" {
  source = "./asg"

  ecs_cluster_name  = "ecs"
  enable_ha         = false
  environment       = var.environment
  image_id          = "ami-090c65b7e9dd3ec2a"
  instance_type     = "t2.small"
  key_name          = "ghostkp"
  prefix            = local.name
  public_subnet_ids = module.networking.vpc_public_subnet_ids
  tags              = local.tags
  vpc_id            = module.networking.vpc_id
}
