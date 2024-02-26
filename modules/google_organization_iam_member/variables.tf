variable "org_id" {
  type        = string
  description = "value of org id"
}

variable "member" {
  type = string
}

variable "roles" {
  type = list(string)
}
