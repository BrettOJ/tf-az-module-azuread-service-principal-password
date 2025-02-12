output "azad_app_password" {
  value     = azuread_application_password.aad_app_password
  sensitive = true
}