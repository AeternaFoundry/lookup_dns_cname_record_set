variable "cname_record_set_lookup" {
  description = <<EOT
Map of cname_record_set_lookup, attributes below
Required:
    - host
EOT

  type = map(object({
    host = string
  }))
}

