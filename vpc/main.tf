terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Terraform-Vpc"
  }
}
resource "aws_internet_gateway" "example" {
    vpc_id = "vpc-0222e2dba03e8df93"
	tags = {
        Name = "Terraform-sg"
    }
   } 
resource "aws_subnet" "subnet1-public" {
    vpc_id = "vpc-0222e2dba03e8df93"
    cidr_block = "10.0.1.0/24"

    tags = {
        Name = "Terraform-sub1-pub"
    }
} 

resource "aws_subnet" "subnet2-private" {
    vpc_id = "vpc-0222e2dba03e8df93"
    cidr_block = "10.0.2.0/24"

    tags = {
        Name = "Terraform-sub2-pri"
    }
}
resource "aws_vpc" "default" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
}

