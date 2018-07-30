---
maintainer: hoeghh
---

# Vault

## This repository
In this repository you will find the code used to run and deploy HashiCorp Vault. It will evolve to include both runtimes and tools used to host / maintain HashiCorp Vault.

## Subfolders
### [containers](./containers)
This folder contains the Dockerfiles, a build and push script. Also a version.var file that contains the version/tag the two scripts uses.

### [kubernetes](./kubernetes)
This folder contains the yaml definition for deploying both Vault and Vault-ui to kubernetes. Two scripts are given, one deploy.sh to deploy all and delete.sh to remove everything. This yaml still builds on vanilla Kubernets and needs to be converted to OpenShift objects. Specifically ingress which does not exist in OpenShift.

### [dockerhost](./dockerhost)
This folder holds an example that spins up Vault on a simple Docker host machine. It creates a Docker network and spins up Vault and Vault-ui. It has a readme guide to getting started.

### OpenShift
Later on we will add a folder containing code and yaml needed to deploy Vault and Vault-ui in OpenShift. This work has not started yet.

## Links
Auth backends : https://www.vaultproject.io/docs/auth/

Reading/Writing data : https://www.vaultproject.io/docs/commands/read-write.html

Vault Docker image : https://hub.docker.com/_/vault/

ACL : https://www.vaultproject.io/intro/getting-started/acl.html

Running Vault in HA : https://www.vaultproject.io/docs/concepts/ha.html

Vault-ui on Github : https://github.com/djenriquez/vault-ui
