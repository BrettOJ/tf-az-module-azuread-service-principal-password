resource "time_rotating" "rotation_time" {
  rotation_days = var.rotation_days
}

resource "azuread_service_principal_password" "aad_sp_password" {
  service_principal_id = var.service_principal_id
  display_name         = var.display_name
  end_date             = var.end_date
  start_date           = var.start_date
  rotate_when_changed = {
    rotation = time_rotating.rotation_time.id
  }

}

