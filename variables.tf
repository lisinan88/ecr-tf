# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  description = "AWS region"
  default     = "us-west-2"
  }

variable "instance_type" {
  description = "Type of EC2 instance to provision from dev branch"
  default     = "t3.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  default     = "Provisioned by Terraformasadasdf"
}
variable "additional_tags" {
  default     = {}
  description = "Additional resource tags"
  type        = map(string)
}
variable "vpc_id" {
  description = "VPC ID"
  default     = "vpc-0054c9cd0936a220d"
}