module "sg" {
  source = "./security-group"
}

module "instance" {
  source = "./instance"
  SGID   = module.sg.SGID
}

terraform {
  backend "s3" {
    bucket = "terraform-learner"
    key    = "ex1/terraform.tfstate"
    region = "us-east-1"
  }
}

