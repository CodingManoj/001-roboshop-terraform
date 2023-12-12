# Looping Moudles is the best thing, rather resources

module "instances" {
    for_each           = var.components
   
    source             = "git::https://github.com/CodingManoj/001-tf-module-test.git"
    instance_type      = each.value["instance_type"]
    name               = each.value["name"]
    sgid               = var.sgid
    zone_id            = var.zone_id    
    MYSQL_PSW          = var.MYSQL_PSW
}  
