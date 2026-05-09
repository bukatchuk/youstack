# SaltStack installation guide

### Add repository
```
mkdir -m 755 -p /etc/apt/keyrings
curl -fsSL https://packages.broadcom.com/artifactory/api/security/keypair/SaltProjectKey/public | gpg --dearmor | sudo tee /etc/apt/keyrings/salt-archive-keyring.pgp > /dev/null
curl -fsSL https://github.com/saltstack/salt-install-guide/releases/latest/download/salt.sources | sudo tee /etc/apt/sources.list.d/salt.sources
```

### Install packages
```
apt update; apt-get install \
	salt-common=3007.13 \
	salt-master=3007.13 \
	salt-minion=3007.13 \
	salt-ssh=3007.13 \
	salt-syndic=3007.13 \
	salt-cloud=3007.13 \
	salt-api=3007.13
```

### Enable services
```
systemctl enable salt-master && systemctl start salt-master
systemctl enable salt-minion && systemctl start salt-minion
systemctl enable salt-syndic && systemctl start salt-syndic
systemctl enable salt-api && systemctl start salt-api
```

### Check version
```
salt --versions-report
```

### Example output
```
Salt Version:
          Salt: 3007.13

Python Version:
        Python: 3.10.19 (main, Feb  5 2026, 07:05:38) [GCC 11.2.0]

Dependency Versions:
          cffi: 2.0.0
      cherrypy: unknown
  cryptography: 42.0.5
      dateutil: 2.8.2
     docker-py: Not Installed
         gitdb: Not Installed
     gitpython: Not Installed
        Jinja2: 3.1.6
       libgit2: Not Installed
  looseversion: 1.3.0
      M2Crypto: Not Installed
          Mako: Not Installed
       msgpack: 1.0.7
  msgpack-pure: Not Installed
  mysql-python: Not Installed
     packaging: 24.0
     pycparser: 2.21
      pycrypto: Not Installed
  pycryptodome: 3.19.1
        pygit2: Not Installed
  python-gnupg: 0.5.2
        PyYAML: 6.0.1
         PyZMQ: 25.1.2
        relenv: 0.22.3
         smmap: Not Installed
       timelib: 0.3.0
       Tornado: 6.5.4
           ZMQ: 4.3.4

Salt Package Information:
  Package Type: onedir

System Versions:
          dist: ubuntu 26.04 resolute
        locale: utf-8
       machine: x86_64
       release: 7.0.0-14-generic
        system: Linux
       version: Ubuntu 26.04 resolute
```
