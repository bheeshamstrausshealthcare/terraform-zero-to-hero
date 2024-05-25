variable "ami_id" {
    description = "AMI ID of the Instance"
    type = string
}

variable "instance_type" {
    description = "Instance Type"
    type = string
}

variable "subnet_id" {
    description = "Subnet ID of the VPC for the instance"
    type = string
}

variable "key_name" {
    description = "Name of the key pair"
    type = string
}