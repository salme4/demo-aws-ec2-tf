provider aws {
  region= "ap-northeast-1"
}

output "instance_ip_addr" {
  value = "aws_instance.server.private_ip"
}
