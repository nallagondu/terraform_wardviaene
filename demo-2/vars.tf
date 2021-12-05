variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "eu-west-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-04505e74c0741db8d"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "demo2-mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "demo2-mykey.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}

