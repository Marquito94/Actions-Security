resource "google_secret_manager_secret" "secret-basic" {
  secret_id = "secrer-test"

  labels = {
    label = "secretscanning"
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
