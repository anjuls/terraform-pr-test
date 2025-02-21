resource "google_storage_bucket" "auto-expire" {
  name          = "auto-expiring-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 33
    }
    action {
      type = "Delete"
    }
  }
}

resource "google_storage_bucket" "b" {
  name          = "bucket1"
  location      = "US"
  force_destroy = true
}

resource "google_storage_bucket" "c" {
  name          = "bucket2"
  location      = "US"
  force_destroy = true
}

