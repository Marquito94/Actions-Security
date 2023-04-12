resource "google_secret_manager_secret" "secret-basic" {
  secret_id = "secret-testing"

  labels = {
    label = "GitHub secret scanning"
  }

  replication {
    user_managed {
      replicas {
        location = "us-central1"
      }
      replicas {
        location = "us-east1"
      }
    }
  }
}
