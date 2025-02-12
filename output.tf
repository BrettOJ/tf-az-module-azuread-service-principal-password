output "azad_app_password" {
  value     = azuread_service_principal_password.aad_sp_password
  sensitive = true
}