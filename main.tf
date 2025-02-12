provider "google" {
  project = "your-project-id"
  region  = "us-central1"
}

resource "google_storage_bucket" "example" {
  name     = "my-secure-bucket"
  location = "US"

  versioning {
    enabled = true
  }
}

resource "google_project_iam_member" "bucket_access" {
  project = "your-project-id"
  role    = "roles/storage.admin"
  member  = "user:your-email@gmail.com"
}
