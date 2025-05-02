data "aws_ami" "ec2-user" {
  most_recent = true
  owners      = ["137112412989"]
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20250414.0-x86_64-gp2"]

  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}



resource "aws_instance" "project" {
  ami                    = data.aws_ami.ec2-user.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.my-key-pair.key_name
  vpc_security_group_ids = ["${aws_security_group.security-group-tf.id}"]
  tags = {
    name = "tf-instance"
  }
}