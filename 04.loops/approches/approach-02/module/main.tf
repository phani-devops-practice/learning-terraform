resource "aws_instance" "web" {
  count                  = 2
  ami                    = "ami-0408d6aa07d74894b"
  instance_type          = "t3.micro"

  tags = {
    Name = "terraform-${count.index+1}"
  }
}
