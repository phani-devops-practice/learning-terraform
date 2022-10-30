resource "aws_instance" "web" {
  ami                    = "ami-0408d6aa07d74894b"
  instance_type          = "t3.micro"

  tags = {
    Name = var.name_tag
  }
}

variable "name_tag" {}
