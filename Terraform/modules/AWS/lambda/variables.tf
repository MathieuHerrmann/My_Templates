variable "prefix" {
  type = string
}

variable "layers_set" {
  type = set(string)
}

variable "env_var_map" {
  type = map(string)
}

variable "lambda_name" {
  type = string
}

variable "path_to_handler" {
  type = string
}

variable "zip_path" {
  type = string
}