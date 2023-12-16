output outputinstance_public_IP{
  description = "this output variable will display the public IP"
  value = resource.aws_instance.LinuxServerEC2[*].public_ip
}