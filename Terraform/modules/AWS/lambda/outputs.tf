output "unprefixed_function_name" {
  value = var.lambda_name
}

output "prefixed_lambda_name" {
  value = module.lambda.lambda_function_name
}

output "lambda_function_invoke_arn" {
  value = module.lambda.lambda_function_invoke_arn
}

output "lambda_function_arn" {
  value = module.lambda.lambda_function_arn
}