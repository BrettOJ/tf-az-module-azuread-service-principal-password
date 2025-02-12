resource "azuread_application_registration" "appp-reg" {
  display_name = "test-app-registration"
}

module "azuread_application_password" {
    source = "../"
    service_principal_id     = var.service_principal_id
    display_name       = var.display_name
    end_date           = var.end_date
    end_date_relative = var.end_date_relative
    rotate_when_changed = var.rotate_when_changed
    start_date         = var.start_date
  }
