resource "google_storage_bucket" "buckettest" {
  name          = "testbucketmarco123"
  location      = "US"
  force_destroy = true
}
