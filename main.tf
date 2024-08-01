provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "s3_auto_yuvika" {
  bucket = "s3_auto"
}

resource "aws_s3_bucket_acl" "s3_auto_yuvika" {
  bucket = aws_s3_bucket.s3_auto_yuvika.bucket
  acl    = "public-read"
}
