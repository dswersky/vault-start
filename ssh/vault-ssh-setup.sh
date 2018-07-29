#!/bin/bash
#TEST: vault-ssh-helper -dev -verify-only -config=/etc/vault-ssh-helper.d/config.hcl
export VAULT_ADDR=http://vaultserver:8200
wget https://releases.hashicorp.com/vault-ssh-helper/0.1.4/vault-ssh-helper_0.1.4_linux_amd64.zip
unzip vault-ssh-helper_0.1.4_linux_amd64.zip
mv vault-ssh-helper /usr/local/bin
rm vault-ssh-helper_0.1.4_linux_amd64.zip
