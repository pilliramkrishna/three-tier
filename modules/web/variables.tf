variable "public_subnet_b" {
  description = "The public subnet b id"
  type        = "string"
}

variable "public_subnet_c" {
  description = "The public subnet c id"
  type        = "string"
}

variable "private_subnet_b" {
  description = "The private subnet b id"
  type        = "string"
}

variable "private_subnet_c" {
  description = "The private subnet c id"
  type        = "string"
}

variable "public_sg" {
  description = "The public security group id"
  type        = "string"
}

variable "private_sg" {
  description = "The private security group id"
  type        = "string"
}
variable "instance_type" {
  description = "ec2 instance type"
}

variable "image_id" {
  description = "ec2 image id"
}

variable "min_size" {
  description = "min_size asg"
}

variable "max_size" {
  description = "max_size asg"
}

variable "env" {
  description ="environment varialbe"
}

