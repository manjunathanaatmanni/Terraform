provider "aws" {
  region = "ap-southeast-1"
}


resource "aws_s3_bucket" "atm" {
  bucket = "my-tf-atm-bucket"

  tags = {
    Name        = "My atmbucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.atm.id
  acl    = "private"
}
