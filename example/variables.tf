variable "end_date" {
    description = "The end date until which the password is valid, formatted as an RFC3339 date string."
    type        = string
    default     = null
}

variable "end_date_relative" {
    description = "A relative duration for which the password is valid until, for example 240h (10 days) or 2400h30m."
    type        = string
    default     = null
}

variable "start_date" {
    description = "The start date from which the password is valid, formatted as an RFC3339 date string."
    type        = string
    default     = null
}

# variables file to the module
variable "display_name" {
  description = "The display name for the application."
  type        = string
}

variable "group_membership_claims" {
  description = "Configures the groups claim issued in a user or OAuth access token that the app expects. Possible values are None, SecurityGroup, DirectoryRole, ApplicationGroup or All."
  type        = string
  default     = null
}

variable "homepage_url" {
  description = "Home page or landing page of the application."
  type        = string
  default     = null
}

variable "implicit_access_token_issuance_enabled" {
  description = "Whether this web application can request an access token using OAuth implicit flow."
  type        = bool
  default     = false
}

variable "implicit_id_token_issuance_enabled" {
  description = "Whether this web application can request an ID token using OAuth implicit flow."
  type        = bool
  default     = false
}

variable "logout_url" {
  description = "The URL that will be used by Microsoft's authorization service to sign out a user using front-channel, back-channel or SAML logout protocols."
  type        = string
  default     = null
}

variable "marketing_url" {
  description = "URL of the marketing page for the application."
  type        = string
  default     = null
}

variable "notes" {
  description = "User-specified notes relevant for the management of the application."
  type        = string
  default     = null
}

variable "privacy_statement_url" {
  description = "URL of the privacy statement for the application."
  type        = string
  default     = null
}

variable "requested_access_token_version" {
  description = "The access token version expected by this resource. Must be one of 1 or 2, and must be 2 when sign_in_audience is either AzureADandPersonalMicrosoftAccount or PersonalMicrosoftAccount. Defaults to 2."
  type        = number
  default     = 2
}

variable "service_management_reference" {
  description = "References application context information from a Service or Asset Management database."
  type        = string
  default     = null
}

variable "sign_in_audience" {
  description = "The Microsoft account types that are supported for the current application. Must be one of AzureADMyOrg, AzureADMultipleOrgs, AzureADandPersonalMicrosoftAccount or PersonalMicrosoftAccount. Defaults to AzureADMyOrg."
  type        = string
  default     = "AzureADMyOrg"
}

variable "support_url" {
  description = "URL of the support page for the application."
  type        = string
  default     = null
}

variable "terms_of_service_url" {
  description = "URL of the terms of service statement for the application."
  type        = string
  default     = null
}

# varialble for service principal
variable "account_enabled" {
  description = "Whether or not the service principal account is enabled. Defaults to true."
  type        = bool
  default     = true
}

variable "alternative_names" {
  description = "A set of alternative names, used to retrieve service principals by subscription, identify resource group and full resource ids for managed identities."
  type        = set(string)
  default     = []
}

variable "app_role_assignment_required" {
  description = "Whether this service principal requires an app role assignment to a user or group before Azure AD will issue a user or access token to the application. Defaults to false."
  type        = bool
  default     = false
}


variable "description" {
  description = "A description of the service principal provided for internal end-users."
  type        = string
  default     = null
}



variable "login_url" {
  description = "The URL where the service provider redirects the user to Azure AD to authenticate. Azure AD uses the URL to launch the application from Microsoft 365 or the Azure AD My Apps. When blank, Azure AD performs IdP-initiated sign-on for applications configured with SAML-based single sign-on."
  type        = string
  default     = null
}



variable "notification_email_addresses" {
  description = "A set of email addresses where Azure AD sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Azure AD Gallery applications."
  type        = set(string)
  default     = []
}


variable "preferred_single_sign_on_mode" {
  description = "The single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps. Supported values are oidc, password, saml or notSupported. Omit this property or specify a blank string to unset."
  type        = string
  default     = null
}

variable "feature_tags_custom_single_sign_on" {
  description = "Whether the application supports custom single sign-on. Defaults to false."
  type        = bool
  default     = false
}

variable "feature_tags_enterprise" {
  description = "Whether the application is an enterprise application. Defaults to true."
  type        = bool
  default     = true
}

variable "feature_tags_gallery" {
  description = "Whether the application is in the Azure AD Gallery. Defaults to false."
  type        = bool
  default     = false
}

variable "feature_tags_hide" {
  description = "Whether the application is hidden. Defaults to false."
  type        = bool
  default     = false
}

variable "saml_single_sign_on_relay_state" {
  description = "The relay state URL for the SAML single sign-on configuration."
  type        = string
  default     = null
}


