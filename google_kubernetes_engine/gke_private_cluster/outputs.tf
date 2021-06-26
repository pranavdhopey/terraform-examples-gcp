output "kubernetes_endpoint" {
  sensitive = true
  value     = module.gke_private_cluster.endpoint
}

output "client_token" {
  sensitive = true
  value     = base64encode(data.google_client_config.default.access_token)
}

output "ca_certificate" {
  sensitive = true
  value     = module.gke_private_cluster.ca_certificate
}

output "service_account" {
  description = "The default service account used for running nodes."
  value       = module.gke_private_cluster.service_account
}
