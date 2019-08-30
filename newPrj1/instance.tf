# aws configure
# aws ec2 delete-key-pair --key-name mykey
# terraform init
# terraform apply -auto-approve
# cat terraform.tfstate|grep public_ip
# ssh -i mykey ubuntu@13.209.73.61

# terraform destroy -auto-approve

resource "aws_key_pair" "skcc-016-key" {
  key_name = "skcc-016-key"
  public_key = "${file("skcc-016-key.pub")}"
}

resource "aws_instance" "example" {
  ami = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.skcc-016-key.key_name}"

  connection {
    user = "ubuntu"
    private_key = "${file("skcc-016-key")}"
  }
}






