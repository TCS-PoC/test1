#Declaring variable
variable "access_key" {}
variable "secret_key" {}
#variable "region" {}

#Configure the AWS provider
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "us-east-1"
}

#Configure the AWS EC2resource
resource "aws_instance" "instance1" {
  ami = "ami-26ebbc5c"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  key_name = "key1"
  security_groups = ["sg-d4b425a0"]
  subnet_id = "subnet-2b059476" 
  tags {
    Name = "hostTerraform1"
  }
  count = 2
}
