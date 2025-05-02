variable "ports" {
  type    = list(number)
  default = [22, 80, 443, 3000]
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "dynamodb" {
  type    = string
  default = "dynamodb_table"

}