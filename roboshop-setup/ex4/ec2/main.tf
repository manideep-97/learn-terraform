data "aws_ami" "ami" {
  most_recent =  true
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]

}
resource "aws_instance" "ec2" {
  ami ="ami-0089b8e98cd95257d"
  instance_type = var.instance_type
  vpc_security_group_ids = ["sg-0c2f41ec147dbe0a4"]
  tags = {
    Name = var.component
  }
}
resource "aws_route53_record" "record" {
  zone_id = "Z04957413KGOV6PV52A79"
  name = "${var.component}-dev.devops71.shop"
  type = "A"
  ttl = 30
  records = [aws_instance.ec2.private_ip]
}
variable "component" {}
variable "instance_type" {}