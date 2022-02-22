variable "api_url" {
    type = string
    default = "https://xxxx.console.ves.volterra.io/api"
}

variable "api_cert" {
    type = string
    default = "./certificate.cert"
}

variable "api_key" {
  type = string
  default = "./private_key.key"
}

variable "web_app_name" {
  type        = string
  default     = "my-best-shop"
  description = "Web App Name. Also used as a prefix in names of related resources."
}

variable "volterra_namespace_exists" {
  type        = string
  description = "Flag to create or use existing volterra namespace"
  default     = true
}

variable "volterra_namespace" {
  type        = string
  default     = "waap"
  description = "Volterra app namespace where the object will be created. This cannot be system or shared ns."
}

variable "app_domain" {
  default     = ["shop20.ves.foobz.com.au"]
  description = "FQDN for the app. If you have delegated domain `prod.example.com`, then your app_domain can be `<app_name>.prod.example.com`"
}

variable "origin_server_dns_name" {
  description = "Origin server's publicly resolvable dns name"
  default     = ["shop.foobz.com.au"]
}

variable "origin_server_sni" {
  type        = string
  description = "Origin server's SNI value"
  default     = ""
}

variable "enable_hsts" {
  type        = bool
  description = "Flag to enable hsts for HTTPS loadbalancer"
  default     = true
}

variable "enable_redirect" {
  type        = bool
  description = "Flag to enable http redirect to HTTPS loadbalancer"
  default     = true
}