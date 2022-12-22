variable "security_group_name" {
  type = string
  default = ""
}
variable "type" {
  type = string
  default = ""
}
variable "protocol" {
  type = string
  default = ""
}
variable "cidr" {
  type = string
  default = ""
}
variable "start_port" {
  type = number
  default = null
}
variable "end_port" {
  type = number
  default = null
}
variable "security_group_id" {
  type = string
  default = ""
}

variable "name" {
  type = string
  default = ""
}
variable "environment" {
  type = string
  default = ""
}
variable "label_order" {
  type = list(string)
  default = []
}

variable "sg_enabled" {
  type = bool
  default = true
}

variable "allowed_ip" {
  type        = list(any)
  default     = []
  description = "List of allowed ip."
}

variable "allowed_ports" {
  type        = list(any)
  default     = []
  description = "List of allowed ingress ports"
}

variable "public_key" {
  type = string
  default = ""
}