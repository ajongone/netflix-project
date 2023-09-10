# code to create EC2

provider "aws" {
  region = "us-east-1"  # Change to your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-xxxxxxxxxxxxx"  # Change to your desired AMI ID
  instance_type = "t2.micro"           # Change to your desired instance type
  key_name      = "your-key-pair"      # Change to your existing key pair name

  security_groups = ["sg-xxxxxxxx"]    # Change to your desired security group ID(s)
  subnet_id       = "subnet-xxxxxxxx"  # Change to your desired subnet ID
}
