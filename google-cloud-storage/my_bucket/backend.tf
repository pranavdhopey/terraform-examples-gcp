terraform {
  backend "gcs" {
    bucket = "<my-terraform-gcs-bucket>"
    prefix = "terraform/tfstate/gcs_bucket"
  }
}
