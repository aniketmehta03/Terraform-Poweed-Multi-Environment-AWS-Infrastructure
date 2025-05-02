resource "aws_key_pair" "my-key-pair" {
  key_name   = "project-key"
  public_key = file("${path.module}/id_rsa.pub")
}

output "aws_key_pair" {
  value = aws_key_pair.my-key-pair.key_name

}