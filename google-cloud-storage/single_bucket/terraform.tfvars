/* GLOBAL */
project_id = "<my-first-project>"
region     = "<my-region>"

/* Bucket Config */
my_bucket = {
  name               = "<my-bucket-name>"
  location           = "<my-location>"
  versioning         = true
  force_destroy      = false
  bucket_policy_only = false
  labels             = { env = "testing" }
  iam_members = [
    {
      role   = "roles/storage.admin"
      member = "serviceAccount:<name>@<project_id>.iam.gserviceaccount.com"
    },
    {
      role   = "roles/storage.objectAdmin"
      member = "user:<user-name>@example.com"
    },
  ]
  lifecycle_rules = [{
    action = {
      type = "Delete"
    }
    condition = {
      age        = 365
      with_state = "ANY"
    }
  }]
}