variable "region" {
  description = "The AWS region to deploy the infrastructure"
  default     = "ap-southeast-2"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default = "10.0.2.0/24"
}

variable "environment" {
  description = "The environment for the infrastructure (dev, prod, etc.)"
  type        = string
  default = "dev"
}
