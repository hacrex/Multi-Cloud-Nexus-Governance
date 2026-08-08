variable "common_tags" {
  type = map(string)
  default = {
    Project     = "Multi-Cloud-Nexus"
    Environment = "Production"
    ManagedBy   = "Terraform"
    Owner       = "HacRex"
  }
}
