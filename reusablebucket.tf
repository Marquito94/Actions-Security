resource "google_storage_bucket" "buckettesting" {
  name          = "testbucketmarco12345"
  location      = "US"
  force_destroy = true
}
