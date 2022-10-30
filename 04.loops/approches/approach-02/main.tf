module "ec2" {
  count = 2
  source = "./module"
  name_tag = "terraform-${count.index+1}"
}
