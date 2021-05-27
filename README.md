# Módulo Terraform - S3 WebSite

Módulo do Terraform para provisionamento de um bacuket S3 como WebSite

## Como usar o modulo

Crie um arquivo .tf para adicionar o modulo no seu projeto como o exemplo a baixo:

```hcl
module "s3" {
  source = "github.com/marcelocarminati/terraform-module-s3-website?ref=v1.0"

  bucket_name            = var.bucket_name
  cors_allowed_headers   = var.cors_allowed_headers
  cors_allowed_methods   = var.cors_allowed_methods
  cors_allowed_origins   = var.cors_allowed_origins
  cors_max_age_seconds   = var.cors_max_age_seconds
  region                 = var.region
  versioning             = var.versioning
  website_index_document = var.website_index_document
  website_error_document = var.website_error_document
}
```
Depois copie o arquivo variables.tf para o seu projeto. 
Agora crie um arquivo variables.tfvars no seu projeto com o seguinte conteudo e defina os valores nas variaveis.

```hcl
#Preencher valores das variaveis.
bucket_name            = ""
cors_allowed_headers   = [""]
cors_allowed_methods   = [""]
cors_allowed_origins   = [""]
cors_max_age_seconds   = 
region                 = ""
versioning             = 
website_index_document = ""
website_error_document = ""
```

# Recursos provisionados

- AWS S3

# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| bucket\_name | Nome do bucket | string | n/a | yes |
| cors\_allowed\_headers | Headers permitidos para CORS | list | n/a | no |
| cors\_allowed\_methods | Methods permitidos para CORS | list | n/a | no |
| cors\_allowed\_origins | Endereços de origem permitidos no CORS | list | n/a | no |
| cors\_max\_age\_seconds | Idade CORS | number | n/a | no |
| region | Região onde o recurso deve ser provisionado | string | n/a | yes |
| versioning | Ativar versionamento de arquivos | bool | true | no |
| website\_index\_document | Documento inicial | string | index.html | yes |
| website\_error\_document | Documento de erro | string | 404.html | yes |