module "ec2" {
  for_each = var.instances
  source = "./ec2"
  component = each.value["name"]
  instance_type = each.value["type"]
}

variable "instances" {
  default = {
    catalogue = {
      name  = "catalogue"
      count = "t3.micro"
    }
    user = {
      name  = "user"
      count = "t3.small"
    }
  }

}
