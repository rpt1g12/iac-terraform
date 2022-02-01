provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0015a39e4b7c0966f"
  instance_type = "t2.micro"
}
