# YouStack
Youstack is a comprehensive solution for automating the management and configuration of infrastructure and applications at any scale.

## Quick start
Install the salt-master, salt-minion and other Salt components. Enable and start the Salt services.
```
$ git clone git@github.com:bukatchuk/youstack.git && cd youstack; make install
🔍 [0/6] Setting up SaltStack 3007.13
✅ GPG key added
✅ Repository added
✅ Package list updated
🔧 Installing salt-common=3007.13
✅ salt-common installed
🔧 Installing salt-master=3007.13
✅ salt-master installed
🔧 Installing salt-minion=3007.13
✅ salt-minion installed
🔧 Installing salt-ssh=3007.13
✅ salt-ssh installed
🔧 Installing salt-syndic=3007.13
✅ salt-syndic installed
🔧 Installing salt-cloud=3007.13
✅ salt-cloud installed
🔧 Installing salt-api=3007.13
✅ salt-api installed
✅ SaltStack installation complete!
🔍 Processing salt-master...
✅ salt-master enabled and started
🔍 Processing salt-minion...
✅ salt-minion enabled and started
🔍 Processing salt-syndic...
✅ salt-syndic enabled and started
🔍 Processing salt-api...
✅ salt-api enabled and started
🔍 [1/6] Checking prerequisites...
📝 [2/6] Creating script...
🔧 [3/6] Installing binary...
📋 [4/6] Installing aliases...
✅ Aliases added to /home/user/.bashrc
🔄 [5/6] Reloading bash...
✅ [6/6] Final test...
✅ ys ready!

🎉 YouStack 1.0.0 installed successfully!
Commands: ys, ysc, yssh
```
This guide provides instructions for installing Salt on [Salt supported operating systems](https://docs.saltproject.io/salt/install-guide/en/latest/topics/salt-supported-operating-systems.html#salt-supported-operating-systems). It also explains how to configure Salt, start Salt services, and verify your installation.

# Usage
```
# Works identically to salt
ys '*' test.ping
ys -G 'os:Ubuntu' pkg.list_installed
ys web* state.highstate

# Aliases examples
ysc grains.items    # ysc === salt-call
yssh '*' test.ping. # yssh === salt-ssh
```

# Roadmap
| Product | Description | Version | Status |
| :--- | :--- | :--- | :- |
| [Airflow](https://github.com/apache/airflow) | A platform to programmatically author, schedule, and monitor workflows. | latest | 🔄 |
| [AlertManager](https://github.com/prometheus/alertmanager) | Handles alerts sent by client applications such as the Prometheus server. It takes care of deduplicating, grouping, and routing them to the correct receiver integrations such as email, PagerDuty, OpsGenie, or many other mechanisms thanks to the webhook receiver. It also takes care of silencing and inhibition of alerts. | latest | 🔄 |
| [Caddy](https://github.com/caddyserver/caddy) | Fast and extensible multi-platform HTTP/1-2-3 web server with automatic HTTPS. | latest | 🔄 |
| [Cassandra](https://github.com/apache/cassandra) | Transactional distributed database. Linear scalability and proven fault-tolerance on commodity hardware or cloud infrastructure without compromising performance. | latest | 🔄 |
| [CertMate](https://github.com/fabriziosalmi/certmate) | Certificate management system designed for modern infrastructure. | latest | 🔄 |
| [Clickhouse](https://github.com/clickhouse/clickhouse) | A real-time analytics database management system. | latest | 🔄 |
| [Consul](https://github.com/hashicorp/consul) | A distributed, highly available, and data center aware solution to connect and configure applications across dynamic, distributed infrastructure. | latest | 🔄 |
| [ElasticSearch](https://github.com/elastic/elasticsearch) | A distributed search and analytics engine, scalable data store and vector database optimized for speed and relevance on production-scale workloads. | latest | 🔄 |
| [Fabio](https://github.com/fabiolb/fabio)| A fast, modern, zero-conf load balancing HTTP(S) and TCP router for deploying applications managed by consul. | latest | 🔄 |
| [FreeIPA](https://github.com/freeipa/freeipa) | An integrated security information management solution. | latest | 🔄 |
| [git2consul](https://github.com/breser/git2consul) | Mirrors the contents of a git repository into Consul KVs. | latest | 🔄 |
| [Gitlab](https://github.com/gitlabhq/gitlabhq) | Open source software to collaborate on code. | latest | 🔄 |
| [Gitea](https://github.com/go-gitea/gitea) | Painless self-hosted all-in-one software development service, including Git hosting, code review, team collaboration, package registry and CI/CD. | latest | 🔄 |
| [Grafana](https://github.com/grafana/grafana) | Composable observability and data visualization platform. | latest | 🔄 |
| [Graylog](https://github.com/Graylog2/graylog2-server) | A powerful Security Information and Event Management (SIEM) solution and log analytics platform that centralizes, secures, and monitors machine-generated data across diverse sources. | latest | 🔄 |
| [HAProxy](https://github.com/haproxy/haproxy) | Very fast and reliable reverse-proxy offering high availability, load balancing, and proxying for TCP and HTTP-based applications. | latest | 🔄 |
| [Harbor](https://github.com/goharbor/harbor) | Trusted cloud native registry project that stores, signs, and scans content. | latest | 🔄 |
| [InfluxDB](https://github.com/influxdata/influxdb) | A database built to collect, process, transform, and store event and time series data. It is ideal for use cases that require real-time ingest and fast query response times to build user interfaces, monitoring, and automation solutions | latest | 🔄 |
| [Jenkins](https://github.com/jenkinsci/jenkins) | Automate your development workflow, so you can focus on work that matters most. | latest | 🔄 |
| [Jitsi](https://github.com/jitsi/jitsi-meet) | Secure, Simple and Scalable Video Conferences that you use as a standalone app or embed in your web application. | latest | 🔄 |
| [hey](https://github.com/rakyll/hey) | HTTP load generator, ApacheBench (ab) replacement. | latest | 🔄 |
| [Kafka](https://github.com/apache/kafka) | Distributed event streaming platform used by thousands of companies for high-performance data pipelines, streaming analytics, data integration, and mission-critical applications. | latest | 🔄 |
| [Kafka REST](https://github.com/confluentinc/kafka-rest) | The Kafka REST Proxy provides a RESTful interface to a Kafka cluster. | latest | 🔄 |
| [KafkaUI](https://github.com/provectus/kafka-ui) | Web UI for managing Apache Kafka clusters. | latest | 🔄 |
| [kan](https://github.com/kanbn/kan) | A powerful, flexible kanban app that helps you organise work, track progress, and deliver results—all in one place. | latest | 🔄 |
| [Karma](https://github.com/prymitive/karma) | Alertmanager UI is useful for browsing alerts and managing silences, but it's lacking as a dashboard tool - karma aims to fill this gap. | latest | 🔄 |
| [Kibana](https://github.com/elastic/kibana) | Interface to query, analyze, visualize, and manage your data stored in Elasticsearch. | latest | 🔄 |
| [Keepalived](https://github.com/acassen/keepalived) | Health-checking for LVS and high availability. | latest | 🔄 |
| [mailcow](https://github.com/mailcow/mailcow-dockerized) | Groupware/e-mail suite. | latest | 🔄 |
| [Mattermost](https://github.com/mattermost/mattermost) | Collaboration platform that offers chat, workflow automation, voice calling, screen sharing, and AI integration. | latest | 🔄 |
| [Mautic](https://github.com/mautic/mautic) | Marketing Automation Software. | latest | 🔄 |
| [Metabase](https://github.com/metabase/metabase) | the easy, open-source way for everyone in your company to ask questions and learn from data. | latest | 🔄 |
| [Moira](https://github.com/moira-alert/moira) | Moira is a real-time alerting tool, based on Graphite or Prometheus/VictoriaMetrics metrics. | latest | 🔄 |
| [MongoDB](https://github.com/mongodb/mongo) | NoSQL database management system that uses a document-oriented data model. | latest | 🔄 |
| [MySQL](https://github.com/mysql/mysql-server) | The world's most popular open source database, and MySQL Cluster, a real-time, open source transactional database. | latest | 🔄 |
| [n8n](https://github.com/n8n-io/n8n) | Fair-code workflow automation platform with native AI capabilities. Combine visual building with custom code, self-host or clouds integrations. | latest | 🔄 |
| [Neo4j](https://github.com/neo4j/neo4j) | A high performance graph store with all the features expected of a mature and robust database, like a friendly query language and ACID transactions.  | latest | 🔄 |
| [NetBox](https://github.com/netbox-community/netbox) | The source of truth for your network infrastructure. Its job is to define and validate the intended state of all network components and resources. | latest | 🔄 |
| [Netdata](https://github.com/netdata/netdata) | The fastest path to AI-powered full stack observability, even for lean teams. | latest | 🔄 |
| [Nexus](https://github.com/sonatype/nexus-public) | The single source of truth for all your internal and third-party binaries, components, and packages. | latest | 🔄 |
| [Nginx](https://github.com/nginx/nginx) | The world's most popular Web Server, high performance Load Balancer, Reverse Proxy, API Gateway and Content Cache. | latest | 🔄 |
| [Nora](https://github.com/getnora-io/nora) | Lightweight multi-format artifact registry. | latest | 🔄 |
| [OpenLDAP](https://git.openldap.org/openldap/openldap) | An open source implementation of the Lightweight Directory Access Protocol. | latest | 🔄 |
| [OpenVPN](https://github.com/openvpn/openvpn) | A Secure tunneling daemon. | latest | 🔄 |
| [OpenSearch](https://github.com/opensearch-project/opensearch) | A distributed and RESTful search engine. | latest | 🔄 |
| [OpenSearch UI](https://github.com/opensearch-project/oui) | OpenSearch UI Framework. | latest | 🔄 |
| [Plane](https://github.com/makeplane/plane) | Open-source Jira, Linear, Monday, and ClickUp alternative. Plane is a modern project management platform to manage tasks, sprints, docs, and triage. | latest | 🔄 |
| [PostgreSQL](https://github.com/postgres/postgres) | An advanced object-relational database management system that supports an extended subset of the SQL standard, including transactions, foreign keys, subqueries, triggers, user-defined types and functions. | latest | 🔄 |
| [PoWA](https://github.com/powa-team/powa) | Gathers performance stats and provides real-time charts and graphs to help monitor and tune your PostgreSQL servers. | latest | 🔄 |
| [PowerDNS](https://github.com/PowerDNS/pdns) | A versatile nameserver which supports a large number of backends. These backends can either be plain zone files or be more dynamic in nature. | latest | 🔄 |
| [Pritunl](https://github.com/pritunl/pritunl) | A distributed enterprise vpn server built using the OpenVPN protocol. | latest | 🔄 |
| [Prometheus](https://github.com/prometheus/prometheus) | Monitoring system and time series database. | latest | 🔄 |
| [RabbitMQ](https://github.com/rabbitmq/rabbitmq-server) | Multi-protocol messaging and streaming broker. | latest | 🔄 |
| [Redis](https://github.com/redis/redis) | Preferred, fastest, and most feature-rich cache, data structure server, and document and vector query engine. | latest | 🔄 |
| [Redis Insight](https://github.com/redis/RedisInsight) | Redis GUI by Redis. | latest | 🔄 |
| [RocketChat](https://github.com/RocketChat/Rocket.Chat) | Secure, fully customizable communications platform for organizations with high standards of data protection. | latest | 🔄 |
| [SaltStack](https://github.com/saltstack/salt) | Software to automate the management and configuration of infrastructure and applications at scale. | 3007.13 | ✅ |
| [SaltMinion](https://github.com/saltstack/salt) | Software to automate the management and configuration of infrastructure and applications at scale. | 3007.13 | ✅ |
| [SeaweedFS](https://github.com/seaweedfs/seaweedfs) | Youstack is a comprehensive solution for automating the management and configuration of infrastructure and applications at any scale. | latest | 🔄 |
| [Sentry](https://github.com/getsentry/sentry) | Debugging platform that helps every developer detect, trace, and fix issues. Code breaks, fix it faster. | latest | 🔄 |
| [SonarQube](https://github.com/SonarSource/sonarqube) | Provides automated code quality and security reviews, delivering actionable intelligence that helps developers build better and faster. | latest | 🔄 |
| [Superset](https://github.com/apache/superset) | A data visualization and data exploration platform. | latest | 🔄 |
| [Traefik](https://github.com/traefik/traefik) | A modern HTTP reverse proxy and load balancer that makes deploying microservices easy. | latest | 🔄 |
| [Trino](https://github.com/trinodb/trino) | The distributed SQL query engine for big data. | latest | 🔄 |
| [Trivy](https://github.com/aquasecurity/trivy) | Find vulnerabilities, misconfigurations, secrets, SBOM in containers, Kubernetes, code repositories, clouds and more. | latest | 🔄 |
| [Vault](https://github.com/hashicorp/vault) | A tool for secrets management, encryption as a service, and privileged access management. | latest | 🔄 |
| [VictoriaMetrics](https://github.com/victoriametrics/VictoriaMetrics) | Fast, cost-effective, and scalable solution for monitoring and managing time series data. It delivers high performance and reliability, making it an ideal choice for businesses of all sizes. | latest | 🔄 |
| [vip-manager](https://github.com/cybertec-postgresql/vip-manager) | Manages a virtual IP based on state kept in etcd or Consul. | latest | 🔄 |
| [WireGuard](https://github.com/WireGuard/wireguard-linux) | An extremely simple yet fast and modern VPN that utilizes state-of-the-art cryptography. | latest | 🔄 |
| [WireGuard UI](https://github.com/ngoduykhanh/wireguard-ui) | A web user interface to manage your WireGuard setup. | latest | 🔄 |
| [yopass](https://github.com/jhaals/yopass) | Secure sharing of secrets, passwords and files. | latest | 🔄 |
| [ZooKeeper](https://github.com/apache/zookeeper) | A centralized service for maintaining configuration information, naming, providing distributed synchronization, and providing group services. | latest | 🔄 |