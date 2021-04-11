#####
# Networking Module
#####

module "networking" {
  source = "./networking"

  prefix = local.name
}
