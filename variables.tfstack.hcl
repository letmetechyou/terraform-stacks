variable "location" {
  type        = string
  description = "Azure location name"
}

variable "address_space" {
  type = list(string)
}

variable "resource_group_name" {
  type = string
}

variable "virtual_network_name" {
  type = string
}

variable "identity_token" { 
  type        = string 
  ephemeral   = true
  description = "Identity token for provider authentication"
}

variable "client_id" {
  type        = string
  description = "Azure app registration client ID"
}

variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
}
