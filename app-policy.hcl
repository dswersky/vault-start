# For testing, read-only on secret/dev path
path "secret/data/dev/*" {
  capabilities = [ "read" ]
}