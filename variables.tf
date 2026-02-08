variable "project" {
  description = "anzai"
  type        = string
}

variable "environment" {
  description = "dev"
  type        = string
}


#------------------------
#Subnet
#------------------------
resource "aws_subnet" "public_subnet_1a" {
    vpc_id            = aws_vpc.vpc.id
    cidr_block        = "192.168.1.0/24"
    availability_zone = "ap-northeast-1a"
    map_public_ip_on_launch = true

    tags = {
        Name = "${var.project}-${var.environment}-public-subnet-1a"
        project     = var.project
        environment = var.environment
        type        = "public"
    }
}

resource "aws_subnet" "public_subnet_1c" {
    vpc_id            = aws_vpc.vpc.id
    cidr_block        = "192.168.2.0/24"
    availability_zone = "ap-northeast-1c"
    map_public_ip_on_launch = true

    tags = {
        Name = "${var.project}-${var.environment}-public-subnet-1c"
        project     = var.project
        environment = var.environment
        type        = "public"
    }
}

resource "aws_subnet" "private_subnet_1a" {
    vpc_id            = aws_vpc.vpc.id
    cidr_block        = "192.168.3.0/24"
    availability_zone = "ap-northeast-1a"

    tags = {
        Name = "${var.project}-${var.environment}-private-subnet-1a"
        project     = var.project
        environment = var.environment
        type        = "private"
    }
}

resource "aws_subnet" "private_subnet_1c" {
    vpc_id            = aws_vpc.vpc.id
    cidr_block        = "192.168.4.0/24"
    availability_zone = "ap-northeast-1c"

    tags = {
        Name = "${var.project}-${var.environment}-private-subnet-1c"
        project     = var.project
        environment = var.environment
        type        = "private"
    }
}
