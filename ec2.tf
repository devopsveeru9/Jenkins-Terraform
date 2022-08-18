provider "aws" {
  region     = var.region
}

resource "aws_instance" "server" {
  ami           = var.ami
  instance_type = var.int_type
  subnet_id = var.subnet
  security_groups = ["sg-032cfcbf5873a67ac"]
  key_name = aws_key_pair.key.id

  tags = {
    Name = "veeru-1"
  }
}



resource "aws_key_pair" "key" {
  key_name   = "veeru.key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDIV+4tcJcGUe9GCbWfoxW28RVRPRVm+eH5l2nA7VBBZwvmeswTy5EIt0/H0nmyEqFs85SCVWoVkRhV/w2qH2qwqAjRFGRiokn2WJVBXBlriVMlsFSyxiojPOVrweZU/x4R/rCokZMEmABMYXd+3pTMg1O8UMTkJ/2RnCZtRaXBADpVTqXFkQkGvwsBHE60Fc0bW1DOKSI5BfjtA/TOD43y4uPSUNsOZgIdizOrfG5D7AadF6bGghKVt+oeIKz0pUizbpUFHMv++0717xyr6mrczQvIrRz4vyFDJi+Wt/xe2/EaIB9EdG5Gy/mpIqKMfpqWQkHBXeKVfS+gIMrtBJ8E7FFVf/UUBB/6FVlvX6aZGsXKC17vS9CMSpc3q5RK2MiqPtA4ExjNuIdmjatc/JhFi6vfT+dQH34XLg9yiESlsF4pTRM2/NLyAxBIjmIbx8DTV+9HnEBE7l4KOeiWR/BD3kJ4UPSwVaJDPxKp2oO73Cw1wx7BYbJ13JoLuhIuunc= acer@Veeru-Acer"
}
