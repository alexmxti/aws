terraform {
  backend "s3" {
    bucket         = "mati-terraform-state"
    key            = "state/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }
}