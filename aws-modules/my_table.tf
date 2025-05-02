resource "aws_dynamodb_table" "dynamodb-table" {
  name = "${var.my-env}-dynamo-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "id"
  attribute {
    name = "id"
    type = "S"
  }
}