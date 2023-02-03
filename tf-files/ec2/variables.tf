variable "access_key" {
        description = "Access key to AWS console"
}

variable "secret_key" {
        description = "Secret key to AWS console"
}

variable "instance_name" {
        description = "Name of the instance to be created"
        default = "rearc-quest"
}

variable "instance_type" {
        default = "t2.micro"
}
#hardcoded change after running VPC
variable "subnet_id" {
        description = "The VPC subnet the instance(s) will be created in"
        default = "subnet-05dab1ba2d8c8f666"
}

#hardcoded change after obtaining sg
variable "vpc_security_groups_ids" {
	description = "This is the security group we're using for the instance"
	default = ["sg-0444a96bd09aebd6b"]
}
#AWS linux AMI
variable "ami_id" {
        description = "The AMI to use"
        default = "ami-0aa7d40eeae50c9a9"
}

variable "number_of_instances" {
        description = "number of instances to be created"
        default = 1
}

variable "ami_key_pair_name" {
        default = "rearc-key"
}
