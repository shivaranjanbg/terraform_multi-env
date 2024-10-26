resource "aws_instance" "terraform" {

    ami = "ami-09c813fb71547fc4f"
    instance_type = lookup(var.instance_type, terraform.workspace)
    vpc_security_group_ids = ["sg-0907f939a19aa23c9"]
    tags = {
     Name = "terraform-${terraform.workspace}"
  }    
}

resource "aws_security_group" "allow_ssh_terraform" {
    name        = "allow_sshh${terraform.workspace}"
    description = "Allow port number 22 for ssh access"

   #usually we allow ingress traffic
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] #allow from everyone
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
     Name = "allow_sshh-${terraform.workspace}"
  }
}

