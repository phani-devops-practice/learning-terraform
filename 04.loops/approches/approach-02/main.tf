variable "name_tag" {
  default = 2
}

module "ec2" {
  source = "./module"
  name_tag = "terraform-${count.index+1}"
}
