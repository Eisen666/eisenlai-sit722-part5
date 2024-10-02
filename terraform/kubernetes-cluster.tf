resource "azurerm_kubernetes_cluster" "aks" {
  name                = "eisenlai-aks"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "eisenlai-aks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"  # Corrected to lowercase
    outbound_type     = "loadBalancer"
  }
}