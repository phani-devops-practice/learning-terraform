variable "number_of_instances" {
  default = 2
}

resource "aws_instance" "web" {
  count                  = var.number_of_instances
  ami                    = "ami-0408d6aa07d74894b"
  instance_type          = "t3.micro"

  tags = {
    Name = "terraform-${count.index+1}"
  }
}

