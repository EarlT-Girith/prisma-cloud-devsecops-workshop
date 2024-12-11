provider "aws" {
  region = "us-west-2"
}
##test

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "8a96d9d44c1267545a0b6d47ded7039725f3f010"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 18:02:53"
    git_last_modified_by = "earl.tan@girith-solutions.co"
    git_modifiers        = "earl.tan"
    git_org              = "EarlT-Girith"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "4bf5b3c6-de23-46d7-92c1-68572fe0d270"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
