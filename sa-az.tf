resource "azurerm_resource_group" "testrg" {
  name     = "guavus-nitin-cns-rg"
  location = "Central India"
}

resource "azurerm_storage_account" "testsa" {
  name                     = "guavusnitinsa"
  resource_group_name      = "${azurerm_resource_group.testrg.name}"
  location                 = "Central India"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
