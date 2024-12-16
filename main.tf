# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0asdfasdsadfsasdfasd

provider "aws" {
  region = var.region
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical11
}

resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  vpc_security_group_ids = [module.web_server_sg.security_group_id]

  tags = merge(
    var.additional_tags,
    {
      Name = "MyVPCinstance"
    },
  )
}
module "web_server_sg" {
  source  = "app.terraform.io/Org-China/security-group/aws"

  name        = "web-server"
  description = "Security group for web-server with HTTP ports open within VPC"
  vpc_id      = var.vpc_id
  ingress_with_cidr_blocks = [
    {
      from_port   = 8080
      to_port     = 8090
      protocol    = "tcp"
      description = "User-service ports"
      cidr_blocks = "10.10.0.0/16"
    },
    {
      rule        = "postgresql-tcp"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}

module "web_server_sg1" {
  source = "terraform-aws-modules/security-group/aws//modules/http-80"

  name        = "web-server"
  description = "Security group for web-server with HTTP ports open within VPC"
  vpc_id      = "var.vpc_id"

  ingress_cidr_blocks = ["10.10.0.0/16"]
}
