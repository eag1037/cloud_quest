provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_id}"
    count = "${var.number_of_instances}"
    subnet_id = "${var.subnet_id}"
    vpc_security_group_ids = "${var.vpc_security_groups_ids}"
    associate_public_ip_address = true
    instance_type = "${var.instance_type}"
    key_name = "${var.ami_key_pair_name}"
} 
