echo "Creating Docker network"
docker network create vault-network

echo '
backend "file" {
  path = "/vault/file/vaultsecrets"
}

listener "tcp" {
  address = "0.0.0.0:8200"
  #tls_cert_file = "/root/server.crt"
  #tls_key_file = "/root/server.key"
  tls_disable = 1
}
' > /tmp/vault.conf

cat /tmp/vault.conf

echo "Starting Vault container in server mode..."

# If you want port 8200 exposed, add #-p 8200:8200 \
docker run -d \
--hostname vault \
--network vault-network \
--privileged \
--name vault \
--cap-add=IPC_LOCK \
-v /tmp/vault.conf:/vault/config/vault.conf \
praqma/vault:0.7.0 server -config /vault/config/vault.conf

echo "run :
docker exec -it vault /bin/sh
export VAULT_ADDR=http://127.0.0.1:8200
vault init

to init Vault and get keys
"

echo "Starting Vault UI"
docker run -d \
-p 8000:8000 \
--network vault-network \
--hostname vault-ui \
-e VAULT_URL_DEFAULT="http://vault:8200" \
-e VAULT_AUTH_DEFAULT="GITHUB" \
--name vault-ui \
djenriquez/vault-ui

