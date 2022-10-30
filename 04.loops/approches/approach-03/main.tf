resource "aws_instance" "web" {
  count                  = length(var.instance_type)
  ami                    = "ami-0408d6aa07d74894b"
  instance_type          = var.instance_type[count.index+1]

  tags = {
    Name = "terraform"
  }
}

variable "instance_type" {
  default = ["t3.micro", "t2.micro"]
}