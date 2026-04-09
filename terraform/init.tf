provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}