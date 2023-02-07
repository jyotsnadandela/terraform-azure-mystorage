provider "azurerm"{
 features{}
}


module "storage_account" {
  source  = "./storage_account_creation"
  #version = "3.11.0"

  storage_name = "jyostorage28"
  account_tier = "Standard"
  replication_type = "LRS"
  

}