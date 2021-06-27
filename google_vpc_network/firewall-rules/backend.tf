terraform {
  backend "gcs" {
    bucket = "<my-terraform-gcs-bucket>"
    prefix = "terraform/tfstate/firewall_rules"
  }
}