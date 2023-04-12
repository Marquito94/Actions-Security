resource "google_storage_bucket" "dispatchtesting" {
  name          = "workflow-dispatchtest"
  location      = "US"
  force_destroy = true
}
