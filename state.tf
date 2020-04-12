terraform {
  backend "s3" {
    bucket = "tfstates-demo"
    key    = "sample1/terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "terraform-locking"
  }
}