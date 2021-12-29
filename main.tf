provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "devboxfuse" {
  ami = "ami-0d527b8c289b4af7f"
  instance_type = "t2.micro"
  key_name = "boxfuse"
  vpc_security_group_ids = ["sg-0641223a405dd9767"]

  tags = {
      Name = var.name
      group = var.group
  }  
}
