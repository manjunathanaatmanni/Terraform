module "website_s3_bucket" {
  source = "./modules/aws-s3-static-website-bucket"

  bucket_name = "s3-modules-manju"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

