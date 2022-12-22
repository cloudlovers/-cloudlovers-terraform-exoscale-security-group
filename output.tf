output "sg_id" {
  value = exoscale_security_group.my_security_group.*.id
  description = "The sg ID."

}

output "sg_name" {
  value = exoscale_security_group.my_security_group.*.name
  description = "The sg ID."

}