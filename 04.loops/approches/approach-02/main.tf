module "ec2" {
  count = 2
  source = "./module"
}

