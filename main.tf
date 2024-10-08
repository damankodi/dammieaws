provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "s3autoyuvika1" {
  bucket = "s3autoyuvika1"
}

resource "aws_s3_bucket_acl" "s3autoyuvika1" {
  bucket = aws_s3_bucket.s3autoyuvika1.bucket
  acl    = "public-read"
}
