variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.145.96.0/21"
}

variable "subnets" {
  description = "Map of subnet names to CIDR blocks and AZs"
  type = map(object({
    cidr_block        = string
    availability_zone = string
    type              = string # public, dmz, private
  }))
  default = {
    "s7-prd-public-subnet-a" = {
      cidr_block        = "10.145.96.0/26"
      availability_zone = "ap-northeast-1a"
      type              = "public"
    }
    "s7-prd-public-subnet-c" = {
      cidr_block        = "10.145.96.64/26"
      availability_zone = "ap-northeast-1c"
      type              = "public"
    }
    "s7-prd-dmz-subnet-a" = {
      cidr_block        = "10.145.96.128/25"
      availability_zone = "ap-northeast-1a"
      type              = "dmz"
    }
    "s7-prd-dmz-subnet-c" = {
      cidr_block        = "10.145.97.0/25"
      availability_zone = "ap-northeast-1c"
      type              = "dmz"
    }
    "s7-prd-private-batch-subnet-a" = {
      cidr_block        = "10.145.97.128/25"
      availability_zone = "ap-northeast-1a"
      type              = "private"
    }
    "s7-prd-private-batch-subnet-c" = {
      cidr_block        = "10.145.98.0/25"
      availability_zone = "ap-northeast-1c"
      type              = "private"
    }
    "s7-prd-private-db-subnet-a" = {
      cidr_block        = "10.145.98.128/26"
      availability_zone = "ap-northeast-1a"
      type              = "private"
    }
    "s7-prd-private-db-subnet-c" = {
      cidr_block        = "10.145.98.192/26"
      availability_zone = "ap-northeast-1c"
      type              = "private"
    }
    "s7-prd-private-tgw1-subnet-a" = {
      cidr_block        = "10.145.99.0/26"
      availability_zone = "ap-northeast-1a"
      type              = "private"
    }
    "s7-prd-private-tgw1-subnet-c" = {
      cidr_block        = "10.145.99.64/26"
      availability_zone = "ap-northeast-1c"
      type              = "private"
    }
    "s7-prd-private-tgw2-subnet-a" = {
      cidr_block        = "10.145.99.128/26"
      availability_zone = "ap-northeast-1a"
      type              = "private"
    }
    "s7-prd-private-tgw2-subnet-c" = {
      cidr_block        = "10.145.99.192/26"
      availability_zone = "ap-northeast-1c"
      type              = "private"
    }
    "s7-prd-private-tgw3-subnet-a" = {
      cidr_block        = "10.145.100.0/26"
      availability_zone = "ap-northeast-1a"
      type              = "private"
    }
    "s7-prd-private-tgw3-subnet-c" = {
      cidr_block        = "10.145.100.64/26"
      availability_zone = "ap-northeast-1c"
      type              = "private"
    }
    "s7-prd-private-vpcendpoint-subnet-a" = {
      cidr_block        = "10.145.100.128/26"
      availability_zone = "ap-northeast-1a"
      type              = "private"
    }
    "s7-prd-private-vpcendpoint-subnet-c" = {
      cidr_block        = "10.145.100.192/26"
      availability_zone = "ap-northeast-1c"
      type              = "private"
    }
  }
}
