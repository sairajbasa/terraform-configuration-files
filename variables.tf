variable "env"{
    type = string
}
variable "vpc_cidr" {
    type = string
}

variable "vpc_name" {
    type = string
}

variable "subnet_cidr" {
    type = string
}

variable "subnet_name" {
    type = string
}

variable "ec2_ami" {
   type = string   
}

variable "ec2_instance_type" {
    type = string
}

variable "ec2_name" {
    type = string
}