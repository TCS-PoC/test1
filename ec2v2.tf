#Configure the AWS EC2resource
resource "aws_instance" "instance2" {
  ami = "ami-26ebbc5c"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  key_name = "key1"
  security_groups = ["sg-d4b425a0"]
  subnet_id = "subnet-2b059476" 
  tags {
    Name = "hostTerraform2"
  }
  count = 1
}
