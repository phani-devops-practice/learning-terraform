resource "aws_instance" "web" {
  count                  = length(var.instance_type)
  ami                    = "ami-0408d6aa07d74894b"
  instance_type          = var.instance_type[count.index]

  tags = {
    Name = "terraform-${count.index+1}"
  }
}

variable "instance_type" {
  default = ["t3.micro", "t2.micro"]
}


