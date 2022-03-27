variable "AWS_REGION" {
}
variable "AWS_PROFILE" {
}
variable "AMIS" {
  type = map(string)
  default = {
    eu-west-2 = "ami-0015a39e4b7c0966f"
  }
}
variable "INSTANCE_USERS" {
  type = map(string)
  default = {
    aws-linux = "ec2-user"
    ubuntu = "ubuntu"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  type = string
  default = "~/.ssh/id_rsa"
}

variable "PATH_TO_PUBLIC_KEY" {
  type = string
  default = "~/.ssh/id_rsa.pub"
}

