locals {
     env = var.env    
}

resource "aws_vpc" "vpc1" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${local.env}-${var.vpc_name}"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = var.subnet_cidr
  tags = {
    Name = "${local.env}-${var.subnet_name}"
  }

}


resource "aws_instance" "myinstance" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  subnet_id     = aws_subnet.subnet1.id
  tags = {
    Name = "${local.env}-${var.ec2_name}"
  }
}

