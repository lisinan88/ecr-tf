# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0asdfasdsadfsasdfasd

provider "aws" {
  region = var.region
}

# 这个是一个注释，会根据自己的AWS账号自动获取AMI,然后赋予变量

# control tab 代码右移动一行
# shift + tab 代码左移动一行
# ctrl + / 单行注释
# ctrl + shift + / 多行注释
# ctrl + shift + p 调出命令面板
# 输入terraform fmt 格式化代码
# 输入terraform validate 验证代码是否正确
data "aws_ami" "ubuntu" {
  most_recent = true

  owners = ["self"]
  tags = {
    Name   = "nginx-test"
    Tested = "true"
  }
}

# resource "aws_instance" "ubuntu" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = var.instance_type

#   tags = merge(
#     var.additional_tags,
#     {
#       Name = "MyVPCinstance"
#     },
#   )
# }
