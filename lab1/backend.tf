terraform {
  backend "s3" {
    bucket         = "bucket-terraform-tfstate-my"
    key            = "lab1/terraform.tfstate"
    region         = "eu-central-1"
  }
}