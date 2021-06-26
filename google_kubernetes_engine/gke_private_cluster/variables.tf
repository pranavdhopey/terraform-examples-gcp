## Cluster Variables ##
variable "project_id" {
  description = "The project ID to host the cluster in"
  type        = string
}

variable "region" {
  description = "The region to host the cluster in"
  type        = string
}

variable "cluster_name" {
  type        = string
  description = "The name of the cluster (required)"
}

variable "description" {
  type        = string
  description = "The description of the cluster"
  default     = ""
}

variable "zones" {
  type        = list(string)
  description = "The zone to host the cluster in (required if is a zonal cluster)"
}

variable "network" {
  description = "The VPC network to host the cluster in"
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork to host the cluster in"
  type        = string
}

variable "ip_range_pods" {
  description = "The secondary ip range to use for pods"
}

variable "ip_range_services" {
  description = "The secondary ip range to use for services"
}

variable "gce_labels" {
  default = ""
}

variable "service_account" {
  description = "Service account to associate to the nodes in the cluster"
}

variable "master_ipv4_cidr_block" {
  type        = string
  description = "(Beta) The IP range in CIDR notation to use for the hosted master network"
  default     = "10.0.0.0/28"
}

variable "master_authorized_networks" {
  type        = list(object({ cidr_block = string, display_name = string }))
  description = "List of master authorized networks. If none are provided, disallow external access (except the cluster node IPs, which GKE automatically whitelists)."
  default     = []
}

variable "kubernetes_version" {
  type        = string
  description = "The Kubernetes version of the masters. If set to 'latest' it will pull latest available version in the selected region."
  default     = "latest"
}

## Node Variables ##
variable "node_pool_01" {
  type        = string
  description = "The name of the node pool (required)"
}

variable "node_pool_02" {
  type        = string
  description = "The name of the node pool (required)"
}


variable "auto_repair" {
  type    = bool
  default = true
}

variable "auto_upgrade" {
  type    = bool
  default = true
}

variable "min_count" {
  description = "Minimum number of nodes in the NodePool."
  default     = 1
}

variable "max_count" {
  description = "Maximum number of nodes in the NodePool."
  default     = 3
}

variable "machine_type" {
  description = "The name of a Google Compute Engine machine type"
  default     = "n1-standard-2"
}


variable "image_type" {
  description = "The image type to use for this node."
  default     = "COS"
}

variable "disk_type" {
  description = "Type of the disk attached to each node (e.g. 'pd-standard' or 'pd-ssd')"
  default     = "pd-standard"
}

variable "disk_size_gb" {
  description = "Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB"
  default     = "100"
}

variable "preemptible" {
  type        = bool
  description = "A boolean that represents whether or not the underlying node VMs are preemptible"
  default     = false
}

variable "node_pools_labels" {
  type = map(map(string))
}