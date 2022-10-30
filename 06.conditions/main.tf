#conditions is all about picking up the value form the arguments

resource "aws_instance" "web" {
  ami                    = data.aws_ami.example.image_id
  instance_type          = local.instance_type

  tags = {
    Name = "terraform"
  }
}

variable "instance_type" {
  default = null
}

locals {
  instance_type = var.instance_type == null ? "t3.micro" : var.instance_type
}

data "aws_ami" "example" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = ansible-inbuilt
  owners           = ["self"]
}

#Here we can override the instance by using the command : terraform apply -auto-approve -var instance_type = "t2.micro"