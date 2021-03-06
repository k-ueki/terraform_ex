provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc-test"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"
}
