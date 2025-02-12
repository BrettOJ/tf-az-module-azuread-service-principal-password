data "azuread_client_config" "current" {}

module "azure_application_registration" {
  source                                 = "git::https://github.com/BrettOJ/tf-az-module-azure-application_registration?ref=main"
  description                            = var.description
  display_name                           = var.display_name
  group_membership_claims                = var.group_membership_claims
  homepage_url                           = var.homepage_url
  implicit_access_token_issuance_enabled = var.implicit_access_token_issuance_enabled
  implicit_id_token_issuance_enabled     = var.implicit_id_token_issuance_enabled
  logout_url                             = var.logout_url
  marketing_url                          = var.marketing_url
  notes                                  = var.notes
  privacy_statement_url                  = var.privacy_statement_url
  requested_access_token_version         = var.requested_access_token_version
  service_management_reference           = var.service_management_reference
  sign_in_audience                       = var.sign_in_audience
  support_url                            = var.support_url
  terms_of_service_url                   = var.terms_of_service_url
}

module "azuread_service_principal" {
  source                       = "git::https://github.com/BrettOJ/tf-az-module-azure-service-principal?ref=main"
  account_enabled              = var.account_enabled
  alternative_names            = var.alternative_names
  app_role_assignment_required = var.app_role_assignment_required
  client_id                    = module.azure_application_registration.aad_app_reg.client_id
  description                  = var.description
  feature_tags = {
    custom_single_sign_on = var.feature_tags_custom_single_sign_on
    enterprise            = var.feature_tags_enterprise
    gallery               = var.feature_tags_gallery
    hide                  = var.feature_tags_hide
  }
  login_url                     = var.login_url
  notes                         = var.notes
  notification_email_addresses  = var.notification_email_addresses
  owners                        = [data.azuread_client_config.current.object_id]
  preferred_single_sign_on_mode = var.preferred_single_sign_on_mode
  saml_single_sign_on = {
    relay_state = var.saml_single_sign_on_relay_state
  }
}
module "azuread_application_password" {
    source =  "git::https://github.com/BrettOJ/tf-az-module-azure-service-principal-password?ref=main"
    service_principal_id     = module.azuread_service_principal.azad_app_password.id
    display_name       = var.display_name
    end_date           = var.end_date
    end_date_relative = var.end_date_relative
    start_date         = var.start_date
  }
