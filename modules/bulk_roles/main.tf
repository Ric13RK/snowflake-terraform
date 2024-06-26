terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.88.0"
    }
    random = {
      version = ">=2.2.0"
    }
  }
#  experiments = [module_variable_optional_attrs]
}

resource "snowflake_role" "main" {
  for_each = var.roles

  name    = coalesce(each.value["name"], each.key)
  comment = try(coalesce(each.value["comment"], var.default_comment), null)
}
