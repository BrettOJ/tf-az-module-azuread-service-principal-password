variable "service_principal_id" {
  description = "The resource ID of the application for which this password should be created."
  type        = string
}

variable "display_name" {
  description = "A display name for the password."
  type        = string
  default     = null
}

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

variable "rotate_when_changed" {
  description = "A map of arbitrary key/value pairs that will force recreation of the password when they change."
  type        = map(string)
  default     = {}
}

variable "start_date" {
  description = "The start date from which the password is valid, formatted as an RFC3339 date string."
  type        = string
  default     = null
}

variable "rotation_days" {
  description = "The number of days after which the password will be automatically rotated."
  type        = number
  default     = null
}