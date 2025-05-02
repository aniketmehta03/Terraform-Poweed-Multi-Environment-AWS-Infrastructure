module "dev-app" {
  source         = "./aws-modules"
  my-env         = "dev"
  instance_type  = "t2.micro"
  ami_id         = "ami-091dccf4e2d272bae"
  instance_count = 1
}
module "stg-app" {
  source         = "./aws-modules"
  my-env         = "stg"
  instance_type  = "t2.medium"
  ami_id         = "ami-091dccf4e2d272bae"
  instance_count = 2
}
module "prd-app" {
  source         = "./aws-modules"
  my-env         = "prd"
  instance_type  = "t2.large"
  ami_id         = "ami-091dccf4e2d272bae"
  instance_count = 3
}