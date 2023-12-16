/*variable "ami"{
    description = "This variable is having AMI id"
    type = string
    default = "ami-0cfd0973db26b893b"
}*/

variable "instancetype"{
    description = "This variable is having instance type"
    type = string
    #default = "t2.micro"
}

variable "keyname"{
    description = "This variable is having key name"
    type = string
    default = "fiyi key"
}

variable "subnet"{
    description = "This variable is having subnet"
    type = string
    #default = "subnet-069816b514dd3947e"
}

variable "securitygroup"{
    description = "This variable is having security group id"
    type = string
    default = "sg-03af7cba78ab19f18"
}