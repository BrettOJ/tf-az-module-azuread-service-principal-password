# tf-az-module-azuread-application-password
Terraform module to create an Azure AD application password

---
created: 2025-02-12T16:12:48 (UTC +08:00)
tags: []
source: https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password
author: 
---

# azuread_service_principal_password | Resources | hashicorp/azuread | Terraform | Terraform Registry

> ## Excerpt
> Manages a password credential associated with a service principal within Azure Active Directory. See also the azuread_application_password resource.

---
Manages a password credential associated with a service principal within Azure Active Directory. See also the [azuread\_application\_password resource](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password).

## [API Permissions](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#api-permissions)

The following API permissions are required in order to use this resource.

When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.OwnedBy` or `Application.ReadWrite.All`

When authenticated with a user principal, this resource may require one of the following directory roles: `Application Administrator` or `Global Administrator`

## [Example Usage](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#example-usage)

_Basic example_

```terraform
resource "azuread_application" "example" { display_name = "example" } resource "azuread_service_principal" "example" { client_id = azuread_application.example.client_id } resource "azuread_service_principal_password" "example" { service_principal_id = azuread_service_principal.example.id }
```

_Time-based rotation_

```terraform
resource "azuread_application" "example" { display_name = "example" } resource "azuread_service_principal" "example" { client_id = azuread_application.example.client_id } resource "time_rotating" "example" { rotation_days = 7 } resource "azuread_service_principal_password" "example" { service_principal_id = azuread_service_principal.example.id rotate_when_changed = { rotation = time_rotating.example.id } }
```

## [Argument Reference](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#argument-reference)

The following arguments are supported:

-   [`display_name`](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#display_name-4) - (Optional) A display name for the password.
-   [`end_date`](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#end_date-1) - (Optional) The end date until which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
-   [`end_date_relative`](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#end_date_relative-1) - (Optional) A relative duration for which the password is valid until, for example `240h` (10 days) or `2400h30m`. Changing this field forces a new resource to be created.
-   [`rotate_when_changed`](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#rotate_when_changed-1) - (Optional) A map of arbitrary key/value pairs that will force recreation of the password when they change, enabling password rotation based on external conditions such as a rotating timestamp. Changing this forces a new resource to be created.
-   [`service_principal_id`](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#service_principal_id-1) - (Required) The ID of the service principal for which this password should be created. Changing this field forces a new resource to be created.
-   [`start_date`](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#start_date-1) - (Optional) The start date from which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the current date is used. Changing this field forces a new resource to be created.

## [Attributes Reference](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#attributes-reference)

In addition to all arguments above, the following attributes are exported:

-   [`key_id`](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#key_id-1) - A UUID used to uniquely identify this password credential.
-   [`value`](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#value-3) - The password for this service principal, which is generated by Azure Active Directory.

## [Timeouts](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#timeouts)

The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions:

-   [`create`](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#create-3) - (Defaults to 5 minutes) Used when creating the resource.
-   [`read`](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#read-3) - (Defaults to 5 minutes) Used when retrieving the resource.
-   [`delete`](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#delete-3) - (Defaults to 5 minutes) Used when deleting the resource.

## [Import](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password#import)

This resource does not support importing.
