variable "region" {
  default = "europe-west1"
}

variable "region_zone" {
  default = "europe-west1-c"
}

variable "project_name" {
  description = "sebbraun-yet"
}

variable "account_file_path" {
  description = "~/.config/gcloud/terraform-admin-yet.json"
}

variable "image" {
  description = "Google Compute Image to use"
}
