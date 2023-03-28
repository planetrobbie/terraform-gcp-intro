provider "google" {
  region  = var.region
  project = var.project_name
}

resource "google_compute_instance" "vm" {
  name                      = "hello-world-vm"
  machine_type              = var.instance_type
  zone                      = var.region_zone
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
  metadata = {
    sshKeys = "var.ssh_user:var.ssh_pub_key"
  }
  labels = {
    env   = "prod"
    owner = "seb braun"
  }
}
