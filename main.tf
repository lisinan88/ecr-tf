# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0asdfasdsadfsasdfasd

provider "aws" {
  region = var.region
}


data "aws_ami" "ubuntu" {
  most_recent = true

  owners = ["self"]
  tags = {
    Name   = "nginx-test"
    Tested = "true"
  }
}


resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = merge(
    var.additional_tags,
    {
      Name = "MyVPCinstance"
    },
  )
}
