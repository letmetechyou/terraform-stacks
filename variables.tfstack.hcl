variable "location" {
  description = "Location for the resources"
  type        = string
  default = "eastus"
}

variable "prefix" {
  description = "Prefix for the resources"
  type        = string
}

variable "suffix" {
  description = "Suffix for the resources"
  type        = string
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
}

variable "cidr_range" {
  description = "CIDR range for the vnet"
  type        = string
}

variable "subnets" {
  description = "Subnets for the vnet"
  type        = map(list(string))
}

variable "subscription_id" {
  type = string
}

variable "client_id" {
  
}

variable "client_secret" {
  
}