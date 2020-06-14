resource "null_resource" "depends_on" {
    triggers = {
        depends_on = join("", var.launch_template_depends_on)
    }
}

resource "aws_launch_template" "launch_template_terraform" {
    count         = var.launch_template_count
    depends_on    = [null_resource.depends_on]
    name_prefix   = var.launch_template_name_prefix
    image_id      = var.launch_template_image_id
    instance_type = var.launch_template_instance_type
    tags          = local.tags
}