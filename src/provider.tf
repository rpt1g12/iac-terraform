provider "aws" {
  region = var.AWS_REGION
  profile = var.AWS_PROFILE
}

terraform {
  backend "s3" {
    bucket = "rpereztorro-tf-state"
    key    = "terraform.tfstate"
    region = "eu-west-2"
    profile = "rpereztorro"
  }
}

