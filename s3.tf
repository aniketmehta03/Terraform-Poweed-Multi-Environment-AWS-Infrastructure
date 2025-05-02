resource "aws_s3_bucket" "my-bucket" {
  bucket = "my-terraform-bucket-aniket-2025"
  tags = {
    Name = "my-terraform-bucket"
  }
}