/*terraform{
 backend "s3"{
    bucket = "batch1212"
    key = "terraform.tfstate"
    region = "eu-west-2"
 }


}*/



locals{
    environment=terraform.workspace
}


resource "aws_instance" "LinuxServerEC2" {
        count =2
        ami = data.aws_ami.ec2ami.id
        instance_type = var.instancetype
        key_name = var.keyname
       
        subnet_id = var.subnet
        associate_public_ip_address=true
 
        vpc_security_group_ids = [var.securitygroup]
 
    tags = {
               Name = "Server ${count.index}"
               }
}
 
 
provider "aws" {
  region = "eu-west-2"
}