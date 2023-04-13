resource "google_storage_bucket" "buckettest" {
  name          = "testbucketmarco1234"
  location      = "US"
  force_destroy = true
}
