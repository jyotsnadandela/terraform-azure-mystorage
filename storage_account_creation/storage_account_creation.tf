provider "azurerm"{
 features{}
}



resource "azurerm_storage_account" "storageaccount" {
  name                     = var.storage_name
  resource_group_name      = "TerraformRG"
  location                 = "East Us"
  account_tier             = var.account_tier
  account_replication_type = var.replication_type

  tags = {
    environment = "test"
  }
}


output "name"{
  value = azurerm_storage_account.storageaccount.name
}

output "primary_connection_string" {
  description = "The Primary Connection String for the Storage Account"
  #value       = try(azurerm_storage_account.stg.primary_connection_string, null)
  value       = azurerm_storage_account.storageaccount.primary_connection_string
 sensitive =true
}
 


output "id" {
  
  value       = azurerm_storage_account.storageaccount.id
}

