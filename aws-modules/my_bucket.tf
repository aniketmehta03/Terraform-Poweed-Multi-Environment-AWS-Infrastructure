# S3 bucket

resource "aws_s3_bucket" "my-bucket" {
  bucket = "${var.my-env}-my-terraform-bucket-aniket-2025"
  tags = {
    Name = "${var.my-env}-my-terraform-bucket"
    environment = var.my-env
    }
}