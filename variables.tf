variable "bucket_name" {
  type        = string
  description = "Nome do bucket"
}

variable "cors_allowed_headers" {
  type        = list(any)
  description = "Headers permitidos no CORS"
}

variable "cors_allowed_methods" {
  type        = list(any)
  description = "Metodos permitidos no CORS"
}

variable "cors_allowed_origins" {
  type        = list(any)
  description = "Origens permitidas no CORS"
}

variable "cors_max_age_seconds" {
  type        = number
  description = "Tempo maximo CORS"
}

variable "region" {
  type        = string
  description = "Região da AWS"
}

variable "versioning" {
  type        = bool
  description = "Versionamento de arquivos"
  default     = true
}

variable "website_index_document" {
  type        = string
  description = "Pagina index do site"
  default     = "index.html"
}

variable "website_error_document" {
  type        = string
  description = "Pagina de erro"
  default     = "404.html"
}