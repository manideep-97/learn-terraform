data "aws_ami" "ami" {
  most_recent =  true
name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]

}
resource "aws_instance" "frontend" {
  count = length(var.instances)
 ami =  data.aws_ami.ami.image_id
instance_type = "t3.micro"
vpc_security_group_ids = ["sg-0c2f41ec147dbe0a4"]

}
variable "instances" {
 default = [ "cart", "catalogue", "user", "payment","shipping"]
}
output "public-ip" {
value = aws_instance.frontend.*.public_ip
}

variable "d1" {
  default = [
    {
      course_name = "aws"
      trainer_name = "simran"
    },
    {
      course_name = "devops"
      course_name = "sim"
    }
  ]
}

output "course_names" {
  value = var.d1.*.course_name
}
