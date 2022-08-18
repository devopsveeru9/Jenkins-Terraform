provider "aws" {
  region     = var.region
}

resource "aws_instance" "server" {
  ami           = var.ami
  instance_type = var.int_type
  subnet_id = var.subnet
  security_groups = ["sg-032cfcbf5873a67ac"]
  key_name = "veeru.key"

  tags = {
    Name = "veeru-1"
  }
}
