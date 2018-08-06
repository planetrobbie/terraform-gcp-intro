variable "region" {
  description = "GCP region targeted"
  default = "europe-west1"
}

variable "region_zone" {
  description = "GCP zone targeted"
  default = "europe-west1-c"
}

variable "project_name" {
  description = "GCP project targeted"
}

#variable "account_file_path" {
#  description = "~/.config/gcloud/terraform-admin-yet.json"
#}

variable "image" {
  description = "GCP Image to use"
}

variable "instance_type" {
  description = "GCP Machine Type to use"
  default = "f1-micro"
}
