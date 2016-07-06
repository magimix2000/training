#

# DO NOT DELETE THESE LINES!

#

# Your subnet ID is:

#

#     subnet-9e15f8f6

#

# Your security group ID is:

#

#     sg-dca200b4

#

# Your AMI ID is:

#

#     ami-74ee001b

#

# Your Identity is:

#

#     totaljobs-c74d97b01eae257e44aa9d5bade97baf

#

variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "aws_region" {
  default = "eu-central-1"
}

provider "aws" {
  access_key = "AKIAJJMKCRQ5TQWJDC3Q"
  secret_key = "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"
  region     = "eu-central-1"
}

resource "aws_instance" "web" {
  count                  = "1"
  ami                    = "ami-74ee001b"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-9e15f8f6"
  vpc_security_group_ids = ["sg-dca200b4"]

  tags {
    Identity = "totaljobs-c74d97b01eae257e44aa9d5bade97baf"
  }


output "public_ip" {
  value = "${join(", ", aws_instance.web.*.public_ip)}"
}

output "public_dns" {
  value = ["${join(", ", aws_instance.web.*.public_dns)}"]
}
