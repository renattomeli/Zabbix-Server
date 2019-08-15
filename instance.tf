provider "aws"{
  region  = "us-east-1"
} 

resource "tls_private_key" "default" {
  algorithm = "RSA"
}

resource "aws_key_pair" "generated" {
  depends_on = ["tls_private_key.default"]
  key_name   = "${var.key_name}"
  public_key = "${tls_private_key.default.public_key_openssh}"
}

resource "aws_instance" "zabbix-prd" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  subnet_id = "${var.subnet_id}"
  vpc_security_group_ids = ["${var.vpc_security_group_ids}"]

  provisioner "local-exec"{
    command = "chmod 400 *pem && ansible-playbook -i hosts playbook.yml"
  }
  tags = {
    Name = "zabbix-prd"
    Owner = "monitoring"
       }
  key_name = "${aws_key_pair.generated.key_name}"
}

resource "local_file" "private_key_pem" {
  depends_on = ["tls_private_key.default"]
  content    = "${tls_private_key.default.private_key_pem}"
  filename   = "${aws_key_pair.generated.key_name}.pem"
}


resource "local_file" "ec2_ip" {
  depends_on = ["aws_instance.zabbix-prd"]
  content    = "${aws_instance.zabbix-prd.public_ip}"
  filename   = "ec2_ip"
}



