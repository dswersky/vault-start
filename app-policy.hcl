# For testing, read-only on secret/dev path
path "secret/dev" {
  capabilities = [ "read" ]
}