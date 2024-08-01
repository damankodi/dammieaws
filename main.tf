provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "s3autoyuvika" {
  bucket = "s3_auto"
}

resource "aws_s3_bucket_acl" "s3autoyuvika" {
  bucket = aws_s3_bucket.s3autoyuvika.bucket
  acl    = "public-read"
}
