resource "aws_s3_bucket" "bucket_remote_state" {
  bucket = "julianometalsp-rs"
}


resource "aws_s3_bucket_versioning" "s3_ver_remote_state" {
  bucket = aws_s3_bucket.bucket_remote_state.id

  versioning_configuration {
    status = "Enabled"
  }
}
