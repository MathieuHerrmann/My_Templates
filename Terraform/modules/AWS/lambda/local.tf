locals {
  prefix        = "${var.prefix}-"
  function_name = "${local.prefix}${var.lambda_name}"
}
