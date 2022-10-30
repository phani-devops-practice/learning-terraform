#conditions is all about picking up the value form the arguments

resource "aws_instance" "web" {
  ami                    = "ami-0408d6aa07d74894b"
  instance_type          = var.instance_type == null ? "t3.micro" : var.instance_type

  tags = {
    Name = "terraform"
  }
}

variable "instance_type" {
  default = null
}

#Here we can override the instance by using the command : terraform apply -auto-approve -var instance_type = "t2.micro"