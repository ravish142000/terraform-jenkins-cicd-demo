resource "aws_instance" "my_instance" {

  ami = "ami-091138d0f0d41ff90"

  instance_type = "t3.micro"

  subnet_id = var.subnet_id

  vpc_security_group_ids = [var.sg_id]

  associate_public_ip_address = true

  tags = {

    Name = "terraform-demo-server"

  }

}
