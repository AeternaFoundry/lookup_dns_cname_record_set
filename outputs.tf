output "cname_record_set_lookup_id" {
  description = "Map of id values across all cname_record_set_lookup, keyed the same as var.cname_record_set_lookup"
  value       = { for k, v in data.dns_cname_record_set.cname_record_set_lookup : k => v.id }
}
output "cname_record_set_lookup_cname" {
  description = "Map of cname values across all cname_record_set_lookup, keyed the same as var.cname_record_set_lookup"
  value       = { for k, v in data.dns_cname_record_set.cname_record_set_lookup : k => v.cname }
}
output "cname_record_set_lookup_host" {
  description = "Map of host values across all cname_record_set_lookup, keyed the same as var.cname_record_set_lookup"
  value       = { for k, v in data.dns_cname_record_set.cname_record_set_lookup : k => v.host }
}

