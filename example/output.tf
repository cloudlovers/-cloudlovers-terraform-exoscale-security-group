output "sg_id" {
  value = module.my_security_group.*.sg_id
  description = "The sg ID."

}
output "sg_name" {
  value = module.my_security_group.*.sg_name
  description = "The sg name."

}

