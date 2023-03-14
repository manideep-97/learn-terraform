variable "sample" {
  default = "hello world"
}
output "sample" {
  value = var.sample
}
variable "sample1" {}
output "sample1" {
  value = var.sample1
}

variable "cli" {}

output "cli" {
  value = var.cli
}
variable "input" {}
variable "sample5" {
  default = "hello"
}
variable "sample6" {
  default = [
  "hello",
  1000,
  true,
  "world"]
}
variable "sample7" {
  default = {
    string = "hello",
    number = 100,
    boolean = true
  }
}
output "types" {
  value = "variable sample5 - ${var.sample5}, First value in list - ${var.sample6[0]}, Boolean value of Map = ${var.sample7["boolean"]}"
}