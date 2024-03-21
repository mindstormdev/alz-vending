module "lz_vending" {
  for_each = local.input_files

  source  = "Azure/lz-vending/azurerm"
  version = "4.0.2" # change this to your desired version, https://www.terraform.io/language/expressions/version-constraints

  location = each.value.location

  # using existing subscription for demo purposes
  subscription_id = var.subscription_id

  subscription_management_group_association_enabled = each.value.subscription_management_group_association_enabled
  subscription_management_group_id                  = each.value.subscription_management_group_id
  subscription_register_resource_providers_enabled  = each.value.subscription_register_resource_providers_enabled

  virtual_network_enabled = each.value.virtual_network_enabled
  virtual_networks        = each.value.virtual_networks

  umi_enabled             = each.value.umi_enabled
  umi_name                = each.value.umi_name
  umi_resource_group_name = each.value.umi_resource_group_name
  umi_role_assignments    = each.value.umi_role_assignments

  resource_group_creation_enabled = each.value.resource_group_creation_enabled
  resource_groups                 = each.value.resource_groups

  role_assignment_enabled = each.value.role_assignment_enabled
}
