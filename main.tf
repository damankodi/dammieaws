provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "dammieauto" {
  bucket = "dammieauto"
}

resource "aws_s3_bucket_acl" "dammieauto" {
  bucket = aws_s3_bucket.dammieauto.bucket
  acl    = "public-read"
}
