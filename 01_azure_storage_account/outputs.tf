output "storage_accound_id" {
  value       = azurerm_storage_account.first_storage_account.id
  sensitive   = true
  description = "description"
  depends_on  = []
}
