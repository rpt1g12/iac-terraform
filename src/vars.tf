variable "AWS_SECRET_KEY" {
}
variable "AWS_ACCESS_KEY" {
}
variable "AWS_REGION" {
}
variable "AMIS" {
  type = map(string)
  default = {
    eu-west-2 = "ami-0015a39e4b7c0966f"
  }
}
