resource "google_secret_manager_secret" "secret-basic" {
  secret_id = "secret-testin"

  labels = {
    label = "secretscan"
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

resource "google_secret_manager_secret_version" "secret-version-basic" {
  secret = google_secret_manager_secret.secret-basic.id

  secret_data = "{
  "type": "service_account",
  "project_id": "eltaladro123",
  "private_key_id": "0b638dee99e16032b473d32d650b463a4764a734",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCLy3A/u0c9UO7t\n86Mq4obNiXWR8GMsOLLZPqgN7zQFuCHR/ZxT297ATVf4dhM+zbvNaUtjHEWSn8SJ\nw2kVBYKp1GohQNeQqSHnTl2/SQrlTJdXVA3ZVOa/6NPEalf7dpwmHqgGRkMvXgu/\nSnYq7NdiYrFvnvq1F7xBAHL8F1QVVefq1to83jGKJYZL94vZjyP1AkKpfLtyYEFE\n8WxYAnXX2RXaw+2yvJMwnCqeqBoUYgkcr9yGcst94Uu0MOP+SSoG6WDDgdkmd615\n1Dwx/Ieg6+sM2nMrXTO7hZfbe7Rg55/ufT0jOX8zE1JVjAl8Yv8MAo33S/IIgw+N\n5HJuZt6bAgMBAAECggEAA/jFuanSflV8VFplumQxPEm5g2n3B1ydCDsVfz/alIcE\nvvibpm5Kx9/qre584X3q5g0lzS0SdPYBGYDpzWUYr0aPtV4oQb3sbqv1Uef7XURt\n0FddBV26KJ2u1pfG5Cgci6C3WWZJpmDfqJGvBc0w2WTAcdFsghSojpg6rBrlkq2R\nZ1d9xbgn5ulybWQnDMoQMp7o81hk7EnyCHXhCJc12nKVQhJhjVGzhZVexzU6D5hQ\nCtg5cyOFc9uyupFPnRQ8K22sC614JO9sbfmBwak2v0hyvIKImN0pttn4ynsAa2AL\nw2N1geuUWsqbkP+Vq8Vu6ykUc++mGvWnKMMd3xLw4QKBgQC9uXd0wBOAmUWvgEf+\ntdZSvHBw+8E5e8O4cRFtJFR4o0VBhWEbq3gtg7xprDTR3OC6+WjrIh+OZtPxbVmq\nVbN9yifSjSZ93ZAoZ18gXuHqVWvvqmvhousgvhUIfP2hQVJvX2Um6hRnOnMDjWHc\npOc2m0eG+Yu7JXD8QwYjMtcw6QKBgQC8oOOBXkeUvzGYz7sKH3G9Dcvlt3JT8urb\nietXIPKr3EBHLqoXFn5NBqrovRrXXWZoYEjTyEgojWhJveYMgmJbKqEuVgujjA6n\nQGL/V4HyvkY8JXz9Z8G8pX3O02J0IxfrnlMVNWu5VFW9pnWzZGSXI3actj5r34d4\n+bagUtKA4wKBgAWCUCyssyRFzxc0g2KrBwkp/Z3aQZcYt+swJVBlAKrsGsO3SsWR\n6hBwRdVPsczyO/hR67EAMahh5f+ZrEPc7zRU3WkovhhjiZ8SuVloR+kVB+hSq4VG\nxMsTmerALmEzU2B2hapmm6cPtG1C+rd8dlZIlgAeWOdbQ/efPpthC4yZAoGBAKec\no2xiVWL0neK2u/IbzNp8NvFyGBJGqbDZFhk++sQCG8/kxFltsF9LjHTxDLfQk94t\nqKkfsBbwyHm2V4RIG5P9BmqBJSh3nNG7ofxZSuxjbU+m1DDskLfLqkYtia+/O1Mw\nRY10AbwWF3ZFQxNcIxI1/gD04/TBFMVHx6Mg1VKXAoGAT1hHk4R+lGN0imEUQ6Ba\nq7TKLrNfiDp89KZlUlhZnh8cfBBoX0eP5aI/HvIincjcRVukmayiT8X/QyM2lP80\nLrXUe4kDVQIIlmFecCYU5fOpiQxfOUdmDomTKImJ7V4xAHeDXf1MXhfFt3tFqBV+\nbUEksb67rA+CSsrB8UMlRGE=\n-----END PRIVATE KEY-----\n",
  "client_email": "terraform-deployer@eltaladro123.iam.gserviceaccount.com",
  "client_id": "115422597946635727520",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/terraform-deployer%40eltaladro123.iam.gserviceaccount.com"
}
"
}
