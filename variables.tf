variable "launch_template_count" {
    type        = bool
    description = "launch template count."
}

variable "launch_template_depends_on" {
    type        = list(string)
    description = "launch template depends on."
}

variable "launch_template_name_prefix" {
    type        = string
    description = "launch template name prefix."
}

variable "launch_template_image_id" {
    type        = string
    description = "launch template image id."
}

variable "launch_template_instance_type" {
    type        = string
    description = "launch template instance type."
}

variable "extra_tags" {
    type        = map(string)
    description = "extra tags."
}