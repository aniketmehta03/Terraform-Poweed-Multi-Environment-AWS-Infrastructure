resource "aws_instance" "project" {
    count = var.instance_count
  ami                    = var.ami_id
  instance_type          = var.instance_type
  tags = {
    Name = "${var.my-env}-terra-automate"
  }
}