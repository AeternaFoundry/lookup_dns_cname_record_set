data "dns_cname_record_set" "cname_record_set_lookup" {
  for_each = var.cname_record_set_lookup

  host = each.value.host
}

