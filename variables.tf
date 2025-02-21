# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  description = "AWS region"
  default     = "cn-north-1"
  }

variable "instance_type" {
  description = "Type of EC2 instance to provision from dev branch"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  default     = "Provisioned by Terraform"
}
variable "additional_tags" {
  default     = {}
  description = "Additional resource tags"
  type        = map(string)
}

