variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}

\
variable "AWS_REGION" {
  default = "ap-northeast-2"
}

variable "AMIS" {
  type = "map"
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    ap-northeast-2 = "ami-0fd02cb7da42ee5e0"
  }
}



variable "PATH_TO_PRIVATE_KEY" {
  default = "skcc-016-key"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "skcc-016-key.pub"
}
variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
