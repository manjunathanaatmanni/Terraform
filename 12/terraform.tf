terraform {
  backend "s3" {
    bucket = "s3-modules-manju"
    key    = "aws-devops/terraform.tfstate"
    region = "ap-southeast-1"
  }
}

