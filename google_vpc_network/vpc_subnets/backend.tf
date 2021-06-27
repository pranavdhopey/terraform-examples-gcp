terraform {
  backend "gcs" {
    bucket = "<my-terraform-gcs-bucket>"
    prefix = "terraform/tfstate/vpc"
  }
}