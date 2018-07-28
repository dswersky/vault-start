# Manage tokens
path "auth/token/*" {
  capabilities = [ "create", "read", "update", "delete", "sudo" ]
}

# Write ACL policies
path "sys/policy/*" {
  capabilities = [ "create", "read", "update", "delete", "list" ]
}

# Manage secret/dev secret engine - for Verification test
path "secret/dev" {
  capabilities = [ "create", "read", "update", "delete", "list" ]
}