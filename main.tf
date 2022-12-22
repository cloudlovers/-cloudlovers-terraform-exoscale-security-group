terraform {
  required_providers {
    exoscale = {
      source  = "exoscale/exoscale"
    }
  }
}




resource "exoscale_security_group" "my_security_group" {
  count = var.sg_enabled == true ? 1 : 0
  name = var.security_group_name
}

resource "exoscale_security_group_rule" "ingress" {
  count = var.sg_enabled == true ? 1 : 0
  security_group_id = join("", exoscale_security_group.my_security_group.*.id)
  type              = var.type
  protocol          = var.protocol
  cidr              = var.cidr
  start_port        = var.start_port
  end_port          = var.end_port
}




