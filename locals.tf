locals {
  input_files = { for f in fileset("${path.module}/landing_zones/", "*.json") : f => jsondecode(file("${path.module}/landing_zones/${f}")) }
}
