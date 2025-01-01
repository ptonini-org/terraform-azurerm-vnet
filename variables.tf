variable "name" {
  type    = string
  default = null
}

variable "address_space" {}

variable "rg" {
  type = object({
    name     = string
    location = string
  })
}

variable "peering_connections" {
  type = map(object({
    id                      = string
    allow_forwarded_traffic = optional(bool, true)
    allow_gateway_transit   = optional(bool, true)
    use_remote_gateways     = optional(bool, false)
  }))
}

variable "dns_servers" {
  default  = []
  nullable = false
}
