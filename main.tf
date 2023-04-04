resource "google_storage_bucket" "new_bucket" {
  name     = "dareit-vm-tf-ci-2222222"
  location = "US"

  versioning {
    enabled = true
  }

  lifecycle {
    rule {
      action    = "Delete"
      condition {
        age = 30
      }
    }
  }
}