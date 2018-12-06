Terraform Google Cloud Hello World

- Deploy a VM Instance on Google Cloud
- Output Instance IP Address.

To use with Terraform Open Source, uncomment `credentials =` line in `main.tf`, this is not necessary when using Terraform Enterprise.

You also have to update in `terraform.tfvars` the values for

- region
- region_zone
- project_name
- account_file_path = set it to the path of the GCP credentials on disk.
- image
