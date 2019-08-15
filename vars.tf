variable "subnet_id" {
    description = "subnet_id"
    default = "subnet-e4e2f5cf"
}

variable "vpc_security_group_ids" {
    description = "vpc_sg"
    default = "sg-0181696f99969053e"
}

variable "ami" {
    description = "ami"
    default = "ami-02eac2c0129f6376b"
}
variable "instance_type" {
    description = "private_key"
    default = "t2.micro"
}

variable "key_name" {
    description = "private_key"
    default = "monitoring"
}