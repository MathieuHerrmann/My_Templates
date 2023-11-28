module "lambda" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "5.0.0"


  publish       = true
  function_name = local.function_name

  handler = var.path_to_handler
  runtime = "nodejs18.x"

  create_package         = false
  local_existing_package = var.zip_path

  memory_size = 1024

  layers                = var.layers_set
  environment_variables = var.env_var_map
}