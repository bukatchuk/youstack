# Install SaltStack

## Linux (DEB) testet on Ubuntu 26.04 LTS
Install the salt-master, salt-minion and other Salt components.
```
mkdir -m 755 -p /etc/apt/keyrings; \
curl -fsSL https://packages.broadcom.com/artifactory/api/security/keypair/SaltProjectKey/public | gpg --dearmor | sudo tee /etc/apt/keyrings/salt-archive-keyring.pgp > /dev/null; \
curl -fsSL https://github.com/saltstack/salt-install-guide/releases/latest/download/salt.sources | sudo tee /etc/apt/sources.list.d/salt.sources; \
export SALT_VERSION=3007.13; \
apt update -y; \
apt-get install -y \
    salt-common=${SALT_VERSION} \
    salt-master=${SALT_VERSION} \
    salt-minion=${SALT_VERSION} \
    salt-ssh=${SALT_VERSION} \
    salt-syndic=${SALT_VERSION} \ 
    salt-cloud=${SALT_VERSION} \
    salt-api=${SALT_VERSION} 
```
Enable and start the Salt services
```
systemctl enable salt-master && systemctl start salt-master
systemctl enable salt-minion && systemctl start salt-minion
systemctl enable salt-syndic && systemctl start salt-syndic
systemctl enable salt-api && systemctl start salt-api
```
This guide provides instructions for installing Salt on [Salt supported operating systems](https://docs.saltproject.io/salt/install-guide/en/latest/topics/salt-supported-operating-systems.html#salt-supported-operating-systems). It also explains how to configure Salt, start Salt services, and verify your installation.