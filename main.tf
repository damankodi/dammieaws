provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "s3_auto" {
  bucket = "s3_auto"
}

resource "aws_s3_bucket_acl" "s3_auto" {
  bucket = aws_s3_bucket.s3_auto.bucket
  acl    = "public-read"
}
