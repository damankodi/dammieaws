provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "s3-auto-yuvika" {
  bucket = "s3_auto"
}

resource "aws_s3_bucket_acl" "s3-auto-yuvika" {
  bucket = aws_s3_bucket.s3-auto-yuvika.bucket
  acl    = "public-read"
}
