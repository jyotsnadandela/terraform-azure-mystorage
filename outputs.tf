# Output variable definitions

output "name" {
  
  value       = module.storage_account.name
}

output "primary_connection_string" {
  description = "The Primary Connection String for the Storage Account"
  #value       = try(azurerm_storage_account.stg.primary_connection_string, null)
  value       = module.storage_account.primary_connection_string
  sensitive = true
}
 


output "id" {
  
  value       = module.storage_account.id
}

