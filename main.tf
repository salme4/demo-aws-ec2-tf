provider aws {
  region= "ap-northeast-1"
}

resource "aws_instance" "terraform-test" {
  ami = "ami-066b76d09a3d3ff4e" 
  instance_type = "t2.micro"
  key_name = "asgard-test-ec2-ssh-key"
  vpc_security_group_ids = [
    "sg-0acbda0211358279c",
    "sg-0ef64a541fac662f4"
  ]
  subnet_id="subnet-026cbdf685ee58384"
  tags = {
    Name = "terraform-cloud-ec2"
  }
}

output "instance_ip_addr" {
  value = "aws_instance.terraform-test.private_ip"
}
