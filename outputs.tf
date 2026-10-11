output "cname_record_set_lookup_id" {
  description = "Map of id values across all cname_record_set_lookup, keyed the same as var.cname_record_set_lookup except keys with no id are omitted"
  value       = { for k, v in data.dns_cname_record_set.cname_record_set_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cname_record_set_lookup_cname" {
  description = "Map of cname values across all cname_record_set_lookup, keyed the same as var.cname_record_set_lookup except keys with no cname are omitted"
  value       = { for k, v in data.dns_cname_record_set.cname_record_set_lookup : k => v.cname if v.cname != null && length(v.cname) > 0 }
}
output "cname_record_set_lookup_host" {
  description = "Map of host values across all cname_record_set_lookup, keyed the same as var.cname_record_set_lookup except keys with no host are omitted"
  value       = { for k, v in data.dns_cname_record_set.cname_record_set_lookup : k => v.host if v.host != null && length(v.host) > 0 }
}

