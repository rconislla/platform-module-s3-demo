# inputs.terraform 

variable "bucket" {
  description = "Optional"
  type = string
}

variable "acl" {
  descriptipn = "Optional"
  type = string
  default = "private"
}

variable "tags" {
  description = "optional"
  type = map(string)
  default = {}
}

variable "bucket_objects" {
  description = "a list of objects to create"
  type = list(string)
  default = []
}
