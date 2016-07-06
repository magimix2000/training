#

# DO NOT DELETE THESE LINES!

#

# Your DNSimple email is:

#

#     sethvargo+terraform@gmail.com

#

# Your DNSimple token is:

#

#     sRFRF5ltrFulE4AB6iRgiRshoIWqiuUF

#

# Your Identity is:

#

#     totaljobs-c74d97b01eae257e44aa9d5bade97baf

#

provider "dnsimple" {
  token = "sRFRF5ltrFulE4AB6iRgiRshoIWqiuUF"
  email = "sethvargo+terraform@gmail.com"
}

resource "dnsimple_record" "www" {
  domain = "terraform.rocks"
  type   = "A"
  name   = "terraform.wibble"
  value  = "${aws_instance.web.0.public_ip}"
}
