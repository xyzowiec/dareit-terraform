resource "google_storage_bucket" "my_bucket" {
  name     = "dareit-vm-tf-ci-22222220"
  location = "us-central1"

  tags = ["dareit"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        managed_by_terraform = "true"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}