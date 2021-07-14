/* GLOBAL */
project_id = "<my-first-project>"
region     = "<my-region>"

/* VPC */
network_name = "terraform-vpc"

/* Firewall Rules */
allow_ssh_rdp = {
  rules = [{
    name                    = "terraform-vpc-allow-ssh-rdp-fw"
    description             = "Allow SSH and RDP Access"
    direction               = "INGRESS"
    ranges                  = ["35.235.240.0/20"]
    priority                = 1000
    source_tags             = null
    source_service_accounts = null
    target_tags             = ["allow-iap-access"]
    target_service_accounts = null
    allow = [{
      protocol = "tcp"
      ports    = ["22", "3389"]
    }]
    deny = []
    log_config = {
      metadata = "INCLUDE_ALL_METADATA"
    }
  }]
}

allow_web = {
  rules = [{
    name                    = "terraform-vpc-allow-web-frw"
    description             = "Allow HTTP and HTTPS Access"
    direction               = "INGRESS"
    ranges                  = ["0.0.0.0/0"]
    priority                = 1000
    source_tags             = null
    source_service_accounts = null
    target_tags             = ["web"]
    target_service_accounts = null
    allow = [{
      protocol = "tcp"
      ports    = ["80", "443"]
    }]
    deny = []
    log_config = {
      metadata = "INCLUDE_ALL_METADATA"
    }
  }]
}  