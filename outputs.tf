# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "instance_ami" {
  value = aws_instance.ubuntu.ami
}

output "instance_arn" {
  value = aws_instance.ubuntu.arn
}
output "instance_type" {
  value = aws_instance.ubuntu.instance_type
}

output "web_server_sg_id" {
  value = module.web_server_sg.security_group_id
}