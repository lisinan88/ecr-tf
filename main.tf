# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0asdfasdsadfsasdfasd

provider "aws" {
  region = var.region
}


data "aws_ami" "ubuntu" {

  image_id = "ami-0961df99654269593"

  most_recent = true

  owners = ["267384000844"] # Canonical
  
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
