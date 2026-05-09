#!/usr/bin/env bash

. .env

function makeEnvFile () {
    declare -a EnvArray=(
        ""
        ""
        ""
        )

    for val in ${EnvArray[@]}; do
        echo "Remove metadata from cloning repo $val" && rm -rf $val && echo "Done!"
    done

    envsubst < ${TEMPLATES_DIR}/.env.template > .env.${ENV}
}

function installSaltStack () {
    mkdir -m 755 -p /etc/apt/keyrings; \
    curl -fsSL https://packages.broadcom.com/artifactory/api/security/keypair/SaltProjectKey/public | gpg --dearmor | sudo tee /etc/apt/keyrings/salt-archive-keyring.pgp > /dev/null; \
    curl -fsSL https://github.com/saltstack/salt-install-guide/releases/latest/download/salt.sources | sudo tee /etc/apt/sources.list.d/salt.sources; \
    \
    apt update -y; apt-get install -y \
        salt-common=${SALTSTACK_VERSION} \
        salt-master=${SALTSTACK_VERSION} \
        salt-ssh=${SALTSTACK_VERSION} \
        salt-syndic=${SALTSTACK_VERSION} \
        salt-cloud=${SALTSTACK_VERSION} \
        salt-api=${SALTSTACK_VERSION}; \
    \
    systemctl enable salt-master && systemctl start salt-master; \
    systemctl enable salt-syndic && systemctl start salt-syndic; \
    systemctl enable salt-api && systemctl start salt-api
}

function installSaltMinion () {
    mkdir -m 755 -p /etc/apt/keyrings; \
    curl -fsSL https://packages.broadcom.com/artifactory/api/security/keypair/SaltProjectKey/public | gpg --dearmor | sudo tee /etc/apt/keyrings/salt-archive-keyring.pgp > /dev/null; \
    curl -fsSL https://github.com/saltstack/salt-install-guide/releases/latest/download/salt.sources | sudo tee /etc/apt/sources.list.d/salt.sources; \
    \
    apt update -y; apt-get install -y \
        salt-common=${SALTSTACK_VERSION} \
        salt-minion=${SALTSTACK_VERSION} \
    \
    systemctl enable salt-minion && systemctl start salt-minion
}

