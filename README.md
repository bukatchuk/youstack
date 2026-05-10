# YouStack
Youstack is a comprehensive solution for automating the management and configuration of infrastructure and applications at any scale.

# Install 
```
$ git clone git@github.com:bukatchuk/youstack.git && cd youstack
$ make install
🔍 [1/6] Checking prerequisites...
📝 [2/6] Creating script...
🔧 [3/6] Installing binary...
✅ ys installed to /usr/local/bin/ys
📋 [4/6] Installing aliases...
✅ Aliases added to /home/user/.bashrc
🔄 [5/6] Reloading bash...
✅ [6/6] Final test...
✅ ys ready!

🎉 YouStack 1.0.0 installed successfully!
Commands: ys, ysc, yssh
```
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
| Product | Description | Status |
| :--- | :--- | :--- |
| [Airflow](https://github.com/apache/airflow) | A platform to programmatically author, schedule, and monitor workflows. | 🔄 |
| [AlertManager](https://github.com/prometheus/alertmanager) | Handles alerts sent by client applications such as the Prometheus server. It takes care of deduplicating, grouping, and routing them to the correct receiver integrations such as email, PagerDuty, OpsGenie, or many other mechanisms thanks to the webhook receiver. It also takes care of silencing and inhibition of alerts. | 🔄 |
| [CertMate](https://github.com/fabriziosalmi/certmate) | Certificate management system designed for modern infrastructure. | 🔄 |
| [Consul](https://github.com/hashicorp/consul) | A distributed, highly available, and data center aware solution to connect and configure applications across dynamic, distributed infrastructure. | 🔄 |
| [ElasticSearch](https://github.com/elastic/elasticsearch) | A distributed search and analytics engine, scalable data store and vector database optimized for speed and relevance on production-scale workloads. | 🔄 |
| [Fabio](https://github.com/fabiolb/fabio)| A fast, modern, zero-conf load balancing HTTP(S) and TCP router for deploying applications managed by consul. | 🔄 |
| [FreeIPA](https://github.com/freeipa/freeipa) | An integrated security information management solution. | 🔄 |
| [git2consul](https://github.com/breser/git2consul) | Mirrors the contents of a git repository into Consul KVs. | 🔄 |
| [Gitlab](https://github.com/gitlabhq/gitlabhq) | Open source software to collaborate on code. | 🔄 |
| [Gitea](https://github.com/go-gitea/gitea) | Painless self-hosted all-in-one software development service, including Git hosting, code review, team collaboration, package registry and CI/CD. | 🔄 |
| [Grafana](https://github.com/grafana/grafana) | Composable observability and data visualization platform. | 🔄 |
| [Graylog](https://github.com/Graylog2/graylog2-server) | A powerful Security Information and Event Management (SIEM) solution and log analytics platform that centralizes, secures, and monitors machine-generated data across diverse sources. | 🔄 |
| [Harbor](https://github.com/goharbor/harbor) | Trusted cloud native registry project that stores, signs, and scans content. | 🔄 |
| [Jenkins](https://github.com/jenkinsci/jenkins) | Automate your development workflow, so you can focus on work that matters most. | 🔄 |
| [Jitsi](https://github.com/jitsi/jitsi-meet) | Secure, Simple and Scalable Video Conferences that you use as a standalone app or embed in your web application. | 🔄 |
| [hey](https://github.com/rakyll/hey) | HTTP load generator, ApacheBench (ab) replacement. | 🔄 |
| [Kafka](https://github.com/apache/kafka) | Distributed event streaming platform used by thousands of companies for high-performance data pipelines, streaming analytics, data integration, and mission-critical applications. | 🔄 |
| [KafkaRest](https://github.com/confluentinc/kafka-rest) | The Kafka REST Proxy provides a RESTful interface to a Kafka cluster. | 🔄 |
| [KafkaUI](https://github.com/provectus/kafka-ui) | Web UI for managing Apache Kafka clusters. | 🔄 |
| [kan](https://github.com/kanbn/kan) | A powerful, flexible kanban app that helps you organise work, track progress, and deliver results—all in one place. | 🔄 |
| [Karma](https://github.com/prymitive/karma) | Alertmanager UI is useful for browsing alerts and managing silences, but it's lacking as a dashboard tool - karma aims to fill this gap. | 🔄 |
| [Kibana](https://github.com/elastic/kibana) | Interface to query, analyze, visualize, and manage your data stored in Elasticsearch. | 🔄 |
| [mailcow](https://github.com/mailcow/mailcow-dockerized) | Groupware/e-mail suite. | 🔄 |
| [Mautic](https://github.com/mautic/mautic) | Marketing Automation Software. | 🔄 |
| [n8n](https://github.com/n8n-io/n8n) | Fair-code workflow automation platform with native AI capabilities. Combine visual building with custom code, self-host or clouds integrations. | 🔄 |
| [NetBox](https://github.com/netbox-community/netbox) | The source of truth for your network infrastructure. Its job is to define and validate the intended state of all network components and resources. | 🔄 |
| [Netdata](https://github.com/netdata/netdata) | The fastest path to AI-powered full stack observability, even for lean teams. | 🔄 |
| [Nexus](https://github.com/sonatype/nexus-public) | The single source of truth for all your internal and third-party binaries, components, and packages. | 🔄 |
| [Nora](https://github.com/getnora-io/nora) | Lightweight multi-format artifact registry. | 🔄 |
| [OpenLDAP](https://git.openldap.org/openldap/openldap) | An open source implementation of the Lightweight Directory Access Protocol. | 🔄 |
| [OpenVPN](https://github.com/openvpn/openvpn) | A Secure tunneling daemon. | 🔄 |
| [OpenSearch](https://github.com/opensearch-project/opensearch) | A distributed and RESTful search engine. | 🔄 |
| [OpenSearch UI](https://github.com/opensearch-project/oui) | OpenSearch UI Framework. | 🔄 |
| [Plane](https://github.com/makeplane/plane) | Open-source Jira, Linear, Monday, and ClickUp alternative. Plane is a modern project management platform to manage tasks, sprints, docs, and triage. | 🔄 |
| [PowerDNS](https://github.com/PowerDNS/pdns) | A versatile nameserver which supports a large number of backends. These backends can either be plain zone files or be more dynamic in nature. | 🔄 |
| [Pritunl](https://github.com/pritunl/pritunl) | A distributed enterprise vpn server built using the OpenVPN protocol. | 🔄 |
| [Prometheus](https://github.com/prometheus/prometheus) | Monitoring system and time series database. | 🔄 |
| [RabbitMQ](https://github.com/rabbitmq/rabbitmq-server) | Multi-protocol messaging and streaming broker. | 🔄 |
| [Redis](https://github.com/redis/redis) | Preferred, fastest, and most feature-rich cache, data structure server, and document and vector query engine. | 🔄 |
| [Redis Insight](https://github.com/redis/RedisInsight) | Redis GUI by Redis. | 🔄 |
| [SaltStack](https://github.com/saltstack/salt) | Software to automate the management and configuration of infrastructure and applications at scale. | 🔄 |
| [SaltMinion](https://github.com/saltstack/salt) | Software to automate the management and configuration of infrastructure and applications at scale. | 🔄 |
| [SeaweedFS](https://github.com/seaweedfs/seaweedfs) | Youstack is a comprehensive solution for automating the management and configuration of infrastructure and applications at any scale. | 🔄 |
| [Sentry](https://github.com/getsentry/sentry) | Debugging platform that helps every developer detect, trace, and fix issues. Code breaks, fix it faster. | 🔄 |
| [SonarQube](https://github.com/SonarSource/sonarqube) | Provides automated code quality and security reviews, delivering actionable intelligence that helps developers build better and faster. | 🔄 |
| [Trivy](https://github.com/aquasecurity/trivy) | Find vulnerabilities, misconfigurations, secrets, SBOM in containers, Kubernetes, code repositories, clouds and more. | 🔄 |
| [Vault](https://github.com/hashicorp/vault) | A tool for secrets management, encryption as a service, and privileged access management. | 🔄 |
| [VictoriaMetrics](https://github.com/victoriametrics/VictoriaMetrics) | Fast, cost-effective, and scalable solution for monitoring and managing time series data. It delivers high performance and reliability, making it an ideal choice for businesses of all sizes. | 🔄 |
| [vip-manager](https://github.com/cybertec-postgresql/vip-manager) | Manages a virtual IP based on state kept in etcd or Consul. | 🔄 |
| [WireGuard](https://github.com/WireGuard/wireguard-linux) | An extremely simple yet fast and modern VPN that utilizes state-of-the-art cryptography. | 🔄 |
| [WireGuard UI](https://github.com/ngoduykhanh/wireguard-ui) | A web user interface to manage your WireGuard setup. | 🔄 |
| [yopass](https://github.com/jhaals/yopass) | Secure sharing of secrets, passwords and files. | 🔄 |
