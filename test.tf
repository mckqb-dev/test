variable "aws_key" {
}

variable "aws_secret" {
}

provider "aws" {
  access_key = "${var.aws_key}"
  secret_key = "${var.aws_secret}"
  region     = "us-east-1"
}
#resource "aws_key_pair" "deployer" {
#    key_name = "deployer-key"
#    public_key = "${file(var.ssh_pubkey_file)}"
#}

resource "aws_instance" "example" {
  ami           = "ami-0d729a60"
  instance_type = "t2.medium"
}
