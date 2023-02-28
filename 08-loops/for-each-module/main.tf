variable "components" {
  default = {
    cart = {
      name = "cart"
      instance_type = "t3.small"
    }

    catalogue = {
      name = "catalogue"
      instance_type = "t3.micro"
    }
  }
}

module "ec2" {
  source = "./module"

  for_each = var.components
  instance_type = each.value.instance_type
  name = each.value.name
}

## Always iterate modules, not resources
## Always map the data and use for_each loop

output "publicip" {
  value = module.ec2
}