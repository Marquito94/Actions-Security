resource "google_storage_bucket" "buckettest" {
  name          = "testbucketmarco12"
  location      = "US"
  force_destroy = true
}
