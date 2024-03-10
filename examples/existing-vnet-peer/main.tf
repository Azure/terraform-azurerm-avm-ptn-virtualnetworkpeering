data "azurerm_resource_group" "get-rg" {
  name = var.resource_group_name
}

# Creating a peering connection between the two virtual networks.
module "vnet_peering_one_way" {
  source = "../../"
  virtual_networks = {
    vnet1 = {
      hub_resource_id           = var.hub_resource_id
      spoke_resource_id = var.remote_network_id
      allow_forwarded_traffic   = true
      allow_gateway_transit     = false
      use_remote_gateways       = false
    }
  }
  resource_group_name = data.azurerm_resource_group.get-rg.name
  remote_network_id         = var.remote_network_id
  peering_direction = "two_way"
}


