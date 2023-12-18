vpc = {
  main = {
      cidr  = "10.0.0.0/16"
      subnets = {
        public = {
          public-1 = { cidr = "10.0.0.0/24" , az = "us-east-1a"  }
          public-2 = { cidr = "10.0.1.0/24" , az = "us-east-1b"  }
        }
         app = {
          app-1 = { cidr = "10.0.2.0/24" , az = "us-east-1a"  }
          app-2 = { cidr = "10.0.3.0/24" , az = "us-east-1b"  }
        } 
         db = {
          db-1 = { cidr = "10.0.4.0/24" , az = "us-east-1a"  }
          db-2 = { cidr = "10.0.5.0/24" , az = "us-east-1b"  }
        } 
      }
  }
}



































# sgid        = ["sg-052fd946b7e11841a"]
# zone_id     = "Z031297333JO38PNHPROR"
# MYSQL_PSW   = "RoboShop@1"

# components = {
#     cart = {
#       name          = "cart-dev"
#       instance_type = "t3.micro"
#     }
#     mongodb = {
#       name          = "mongodb-dev"
#       instance_type = "t3.micro"
#     }
#     catalogue = {
#       name          = "catalogue-dev"
#       instance_type = "t3.micro"
#     }
#     user = {
#       name          = "user-dev"
#       instance_type = "t3.micro"
#     }
#     redis = {
#       name          = "redis-dev"
#       instance_type = "t3.micro"
#     }
#     mysql = {
#       name          = "mysql-dev"
#       instance_type = "t3.micro"
#     }
#     payment = {
#       name          = "payment-dev"
#       instance_type = "t3.micro"
#     }
#     shipping = {
#       name          = "shipping-dev"
#       instance_type = "t3.micro"
#     }
#     rabbitmq = {
#       name          = "rabbitmq-dev"
#       instance_type = "t3.micro"
#     }
#     frontend = {
#       name          = "frontend-dev"
#       instance_type = "t3.micro"
#     }
# }

