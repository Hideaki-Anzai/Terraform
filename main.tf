provider "aws" {
  profile = "terraform"  
  region = "ap-northeast-1"
}
 

 resource "aws_instance" "hello-world-anzai" {
  ami = "ami-06cce67a5893f85f9"
  instance_type = "t2.micro"

tags = {
  Name = "hello-world-anzai"
}

user_data = <<-EOF
#!/bin/bash
amazaon-linux-extras install -y nginx1.12
systemctl start nginx
systemctl enable nginx
EOF
}
