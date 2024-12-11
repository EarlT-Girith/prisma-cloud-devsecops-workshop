provider "aws" {
  region = "us-west-2"
}
##test

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "c25b34f7a7db76d2d7ebba295405a1b4d5c3c3f1"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 18:07:42"
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
