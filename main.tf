#####
# Networking Module
#####

module "networking" {
  source = "./networking"

  prefix = local.name
  tags   = local.tags
}
