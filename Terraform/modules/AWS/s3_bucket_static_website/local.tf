locals {
  prefix = ""

  website_files_path = "${var.website_files_path}"
  bucket_name = "${local.prefix}${var.bucket_name}"

  mime_types = jsondecode(file("${path.module}/data/mime.json")) # Do not edit
}