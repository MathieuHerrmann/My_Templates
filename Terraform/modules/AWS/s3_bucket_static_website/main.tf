resource "aws_s3_bucket" "main" {
  bucket = local.bucket_name
}

resource "aws_s3_bucket_website_configuration" "static_web" {
  bucket = aws_s3_bucket.static_web.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = var.error_document_name
  }
}

# Make the bucket public
resource "aws_s3_bucket_public_access_block" "block_access_s3" {
  bucket                  = aws_s3_bucket.static_web.id
  block_public_acls       = false
  block_public_policy     = false
  restrict_public_buckets = false
}

resource "aws_s3_object" "website_files" {
  for_each     = fileset("${local.website_files_path}", "**")
  bucket       = aws_s3_bucket.static_web.id
  key          = each.value
  source       = "${website_files_path}${each.value}"
  etag         = filemd5("${website_files_path}${each.value}")
  content_type = lookup(local.mime_types, regex("\\.[^.]+$", each.value), null)
}

resource "aws_s3_bucket_policy" "static_web_policy" {
  bucket     = aws_s3_bucket.static_web.id
  policy     = data.aws_iam_policy_document.s3_bucket_get.json
  depends_on = [aws_s3_bucket_public_access_block.block_access_s3]
}


resource "aws_s3_bucket_cors_configuration" "cors_config" {
  bucket = aws_s3_bucket.static_web.bucket
  cors_rule {
    allowed_headers = ["Authorization", "Content-Length"]
    allowed_methods = ["GET", "POST"]
    allowed_origins = ["*"] # TODO potential security rift
    max_age_seconds = 3000
  }
}