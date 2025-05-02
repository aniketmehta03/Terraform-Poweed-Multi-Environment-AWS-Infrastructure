output "ami_ids" {
  value = data.aws_ami.ec2-user.id
}
output "key_pair" {
  value = aws_key_pair.my-key-pair.key_name

}