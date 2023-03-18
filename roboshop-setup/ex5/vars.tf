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
