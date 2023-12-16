data "aws_ami" "ec2ami"{

    most_recent = true

    filter {
   name ="name"
   values = ["al2023-ami-2023.2.2023*"]
    }

filter {
    name = "root-device-type"
    values = ["ebs"]
}




}