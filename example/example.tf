terraform {
  required_providers {
    exoscale = {
      source  = "exoscale/exoscale"
    }
  }
}

provider "exoscale" {
  key = ""
  secret = ""
}


module "my_security_group" {
  source = "./.."
  sg_enabled = true
  security_group_name = "my-security-group"
  type              = "INGRESS"
  protocol          = "TCP"
  cidr              = "0.0.0.0/0"
  start_port        = 80
  end_port          = 80
}


