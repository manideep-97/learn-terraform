resource "aws_instance" "frontend" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c2f41ec147dbe0a4"]
  tags = {
    Name = "frontend"
  }
}
resource "aws_instance" "frontend" {
  zone_id = "Z04957413KGOV6PV52A79"
  name = "frontend-dev.devops71.shop"
  type = "A"
  ttl = 30
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "cart" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c2f41ec147dbe0a4"]
  tags = {
    Name = "cart"
  }
}
resource "aws_instance" "cart" {
  zone_id = "Z04957413KGOV6PV52A79"
  name = "cart-dev.devops71.shop"
  type = "A"
  ttl = 30
  records = [aws_instance.cart.private_ip]
}
resource "aws_instance" "catalogue" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c2f41ec147dbe0a4"]
  tags = {
    Name = "catalogue"
  }
}
resource "aws_instance" "catalogue" {
  zone_id = "Z04957413KGOV6PV52A79"
  name = "catalogue-dev.devops71.shop"
  type = "A"
  ttl = 30
  records = [aws_instance.catalogue.private_ip]
}
resource "aws_instance" "user" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c2f41ec147dbe0a4"]
  tags = {
    Name = "user"
  }
}
resource "aws_instance" "user" {
  zone_id = "Z04957413KGOV6PV52A79"
  name = "user-dev.devops71.shop"
  type = "A"
  ttl = 30
  records = [aws_instance.user.private_ip]
}
resource "aws_instance" "shipping" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c2f41ec147dbe0a4"]
  tags = {
    Name = "shipping"
  }
}
resource "aws_instance" "shipping" {
  zone_id = "Z04957413KGOV6PV52A79"
  name = "shipping-dev.devops71.shop"
  type = "A"
  ttl = 30
  records = [aws_instance.shipping.private_ip]
}
resource "aws_instance" "payment" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c2f41ec147dbe0a4"]
  tags = {
    Name = "payment"
  }
}
resource "aws_instance" "payment" {
  zone_id = "Z04957413KGOV6PV52A79"
  name = "payment-dev.devops71.shop"
  type = "A"
  ttl = 30
  records = [aws_instance.payment.private_ip]
}
resource "aws_instance" "mongodb" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c2f41ec147dbe0a4"]
  tags = {
    Name = "mongodb"
  }
}
resource "aws_instance" "mongodb" {
  zone_id = "Z04957413KGOV6PV52A79"
  name = "mongodb-dev.devops71.shop"
  type = "A"
  ttl = 30
  records = [aws_instance.mongodb.private_ip]
}
resource "aws_instance" "mysql" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c2f41ec147dbe0a4"]
  tags = {
    Name = "mysql"
  }
}
resource "aws_instance" "mysql" {
  zone_id = "Z04957413KGOV6PV52A79"
  name = "mysql-dev.devops71.shop"
  type = "A"
  ttl = 30
  records = [aws_instance.mysql.private_ip]
}
resource "aws_instance" "redis" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c2f41ec147dbe0a4"]
  tags = {
    Name = "redis"
  }
}
resource "aws_instance" "redis" {
  zone_id = "Z04957413KGOV6PV52A79"
  name = "redis-dev.devops71.shop"
  type = "A"
  ttl = 30
  records = [aws_instance.redis.private_ip]
}
resource "aws_instance" "rabbitmq" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c2f41ec147dbe0a4"]
  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_instance" "rabbitmq" {
  zone_id = "Z04957413KGOV6PV52A79"
  name = "rabbitmq-dev.devops71.shop"
  type = "A"
  ttl = 30
  records = [aws_instance.rabbitmq.private_ip]
}


