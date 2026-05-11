# Install SaltStack

```
mkdir -m 755 -p /etc/apt/keyrings; \
curl -fsSL https://packages.broadcom.com/artifactory/api/security/keypair/SaltProjectKey/public | gpg --dearmor | sudo tee /etc/apt/keyrings/salt-archive-keyring.pgp > /dev/null; \
curl -fsSL https://github.com/saltstack/salt-install-guide/releases/latest/download/salt.sources | sudo tee /etc/apt/sources.list.d/salt.sources; \
export SALT_VERSION=3007.13; \
apt-get install -y \
    salt-common=${SALT_VERSION} \
    salt-master=${SALT_VERSION} \
    salt-minion=${SALT_VERSION} \
    salt-ssh=${SALT_VERSION} \
    salt-syndic=${SALT_VERSION} \ 
    salt-cloud=${SALT_VERSION} \
    salt-api=${SALT_VERSION} 
```