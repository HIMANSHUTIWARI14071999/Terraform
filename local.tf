locals {
  resource_location = "Central India"
  resource_virtual_netwrok = {
    name  = "vnet1"
    address_space = ["10.0.0.0/16"]
  }
  resource_subnets = {
    names = ["websubnet","appsubnet"]
     web = ["10.0.0.0/24"]
     app = ["10.0.1.0/24"]
  }
}