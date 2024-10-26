variable "instances" {
    type = map
}

variable "domain_name" {
  default = "shivadaws81s.store"
}

variable "zone_id" {
  default = "Z0492645240LY74YJWKWN"
}

variable "common_tags" {
  default = {
    project = "expense"
    terraform = "true"
  }
}

variable "tags" {
  type = map
}

variable "environment" {
  }