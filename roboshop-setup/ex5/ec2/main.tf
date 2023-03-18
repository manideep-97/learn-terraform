data "aws_ami" "ami" {
  most_recent =  true
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]

}

resource "aws_instance" "ec2" {
  ami = data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = ["sg-0c2f41ec147dbe0a4"]
  tags = {
    Name = var.component
  }

}
variable "component" {}
variable "instance_type" {}
variable "sg_id" {}