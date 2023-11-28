<!--TOC-->

- [Requirements](#requirements)
- [Providers](#providers)
- [Modules](#modules)
- [Resources](#resources)
- [Inputs](#inputs)
- [Outputs](#outputs)

<!--TOC-->

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_lambda"></a> [lambda](#module\_lambda) | terraform-aws-modules/lambda/aws | 5.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_lambda_permission.lambda_permission_api_gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) | resource |
| [aws_api_gateway_rest_api.api](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/api_gateway_rest_api) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domaine_zip_path"></a> [domaine\_zip\_path](#input\_domaine\_zip\_path) | n/a | `string` | n/a | yes |
| <a name="input_env_var_map"></a> [env\_var\_map](#input\_env\_var\_map) | n/a | `map(string)` | n/a | yes |
| <a name="input_environnement"></a> [environnement](#input\_environnement) | n/a | `string` | n/a | yes |
| <a name="input_lambda_name"></a> [lambda\_name](#input\_lambda\_name) | n/a | `string` | n/a | yes |
| <a name="input_layers_set"></a> [layers\_set](#input\_layers\_set) | n/a | `set(string)` | n/a | yes |
| <a name="input_path_to_handler"></a> [path\_to\_handler](#input\_path\_to\_handler) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lambda_function_arn"></a> [lambda\_function\_arn](#output\_lambda\_function\_arn) | n/a |
| <a name="output_lambda_function_invoke_arn"></a> [lambda\_function\_invoke\_arn](#output\_lambda\_function\_invoke\_arn) | n/a |
| <a name="output_prefixed_lambda_name"></a> [prefixed\_lambda\_name](#output\_prefixed\_lambda\_name) | n/a |
| <a name="output_unprefixed_function_name"></a> [unprefixed\_function\_name](#output\_unprefixed\_function\_name) | n/a |
<!-- END_TF_DOCS -->