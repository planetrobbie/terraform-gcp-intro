provider "google" {
  region      = "${var.region}"
  project     = "${var.project_name}"
# credentials = "${file(var.account_file_path)}"
}

resource "google_compute_instance" "vm" {
  name         = "hello-world-vm"
  machine_type = "f1-micro"
  zone         = "${var.region_zone}"

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}
