
resource "azurerm_resource_group" "VnetAssigment" {
  name     = "VnetAssigment"
  location = "Central India"
}

resource "azurerm_virtual_network" "ag-vnet" {
  name                = "ag-vnet"
  location            = azurerm_resource_group.VnetAssigment.location
  resource_group_name = azurerm_resource_group.VnetAssigment.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "subnet01"
    address_prefix = "10.0.1.0/24"
  }

  tags = {
    environment = "ag-Production"
  }
}

resource "azurerm_storage_account" "backupstatefile01" {
  name                     = "backupstatefile01"
  resource_group_name      = azurerm_resource_group.VnetAssigment.name
  location                 = azurerm_resource_group.VnetAssigment.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "ag-prod"
  }
}

resource "azurerm_storage_container" "tfstatefilebkp" {
  depends_on              = [azurerm_storage_account.backupstatefile01]
  name                     = "tfstatefilebkp"
  storage_account_name  = azurerm_storage_account.backupstatefile01.name
  container_access_type = "container"

  provisioner "local-exec" {
    command = "echo 'Backend configuration can now be executed.'"
    interpreter = ["bash", "-c"]
  }
}
