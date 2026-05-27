variable "subnet_id" {
  type        = string
  description = "The ID of the subnet where the EC2 instance will be launched"
}

variable "sg_id" {
  type        = string
  description = "The ID of the security group to associate with the EC2 instance"
}
