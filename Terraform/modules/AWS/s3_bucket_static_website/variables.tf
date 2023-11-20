variable "bucket_name" {
  type = string
}

variable "prefix" {
  type = string 
}

variable "error_document_name" {
  type = string
  default = "index.html"
}

variable "website_files_path" {
  type = string
}