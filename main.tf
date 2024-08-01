provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "yuvika" {
  bucket = "s3_auto"
}

resource "aws_s3_bucket_acl" "yuvika" {
  bucket = aws_s3_bucket.s3_auto.bucket
  acl    = "public-read"
}
