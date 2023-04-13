resource "google_storage_bucket" "buckettest" {
   name          = "test-bucket-marco-123"
   location      = "US"
   force_destroy = true
}
