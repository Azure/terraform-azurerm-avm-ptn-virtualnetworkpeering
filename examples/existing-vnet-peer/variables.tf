variable "resource_group_name" {
  description = "The name of the resource group in which the virtual network exists."
  type = string
  
}

variable "hub_resource_id" {
  description = "The resource ID of the virtual network."
  type = string
  
}

variable "remote_network_id" {
  description = "The resource ID of the remote virtual network."
  type = string
  
}