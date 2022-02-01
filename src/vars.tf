variable "my-var" {
  type = string
  default = "Hello Terraform"
}

variable "my-map" {
  type = map(string)
  default = {
    key = "value"
  }
}

variable "my-list" {
  type = list
  default = [1,2,3]
}
