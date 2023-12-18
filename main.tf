# Looping Moudles is the best thing, rather resources
# module "instances" {
#     source             = "git::https://github.com/CodingManoj/001-tf-module-test.git"
    
#     for_each           = var.components
    
#     instance_type      = each.value["instance_type"]
#     name               = each.value["name"]
#     sgid               = var.sgid
#     zone_id            = var.zone_id    
#     MYSQL_PSW          = var.MYSQL_PSW
#     components         = var.components
# }  

# Creates VPC
module "components" {
    source          = "git::https://github.com/CodingManoj/001-tf-module-vpc.git"
    
    for_each        = var.vpc
    cidr            = each.value["cidr"]
    subnets         = each.value["subnets"]
} 

output "op" {
    value = module.components.main
}