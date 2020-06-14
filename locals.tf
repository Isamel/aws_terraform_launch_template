locals {
  tags  = merge(
      map("key", "resource_name", "value", var.launch_template_name_prefix),
      var.extra_tags
  )
}