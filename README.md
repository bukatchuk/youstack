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
| **Airflow** | A platform to programmatically author, schedule, and monitor workflows. | 🔄 |
| **AlertManager** | Handles alerts sent by client applications such as the Prometheus server. It takes care of deduplicating, grouping, and routing them to the correct receiver integrations such as email, PagerDuty, OpsGenie, or many other mechanisms thanks to the webhook receiver. It also takes care of silencing and inhibition of alerts. | 🔄 |
| **CertMate** | Certificate management system designed for modern infrastructure. | 🔄 |
| **Consul** | A distributed, highly available, and data center aware solution to connect and configure applications across dynamic, distributed infrastructure. | 🔄 |
| **Gitlab** | Open source software to collaborate on code. | 🔄 |
| **Grafana** | Composable observability and data visualization platform. | 🔄 |
| **Graylog** | A powerful Security Information and Event Management (SIEM) solution and log analytics platform that centralizes, secures, and monitors machine-generated data across diverse sources. | 🔄 |
| **Jitsi** | Secure, Simple and Scalable Video Conferences that you use as a standalone app or embed in your web application. | 🔄 |
| **Kafka** | Distributed event streaming platform used by thousands of companies for high-performance data pipelines, streaming analytics, data integration, and mission-critical applications. | 🔄 |
| **KafkaUI** | Web UI for managing Apache Kafka clusters. | 🔄 |
| **kan** | A powerful, flexible kanban app that helps you organise work, track progress, and deliver results—all in one place. | 🔄 |
| **Karma** | Alertmanager UI is useful for browsing alerts and managing silences, but it's lacking as a dashboard tool - karma aims to fill this gap. | 🔄 |
| **mailcow** | Groupware/e-mail suite. | 🔄 |
| **Mautic** | Marketing Automation Software. | 🔄 |
| **n8n** | Fair-code workflow automation platform with native AI capabilities. Combine visual building with custom code, self-host or clouds integrations. | 🔄 |
| **NetBox** | The source of truth for your network infrastructure. Its job is to define and validate the intended state of all network components and resources. | 🔄 |
| **Nexus** | The single source of truth for all your internal and third-party binaries, components, and packages. | 🔄 |
| **Plane** | Open-source Jira, Linear, Monday, and ClickUp alternative. Plane is a modern project management platform to manage tasks, sprints, docs, and triage. | 🔄 |
| **PowerDNS** | A versatile nameserver which supports a large number of backends. These backends can either be plain zone files or be more dynamic in nature. | 🔄 |
| **RabbitMQ** | Multi-protocol messaging and streaming broker. | 🔄 |
| **Redis** | Preferred, fastest, and most feature-rich cache, data structure server, and document and vector query engine. | 🔄 |
| **Redis Insight** | Redis GUI by Redis. | 🔄 |
| **SaltStack** | Software to automate the management and configuration of infrastructure and applications at scale. | 🔄 |
| **SeaweedFS** | Youstack is a comprehensive solution for automating the management and configuration of infrastructure and applications at any scale. | 🔄 |
| **Sentry** | Debugging platform that helps every developer detect, trace, and fix issues. Code breaks, fix it faster. | 🔄 |
| **SonarQube** | Provides automated code quality and security reviews, delivering actionable intelligence that helps developers build better and faster. | 🔄 |
| **Vault** | A tool for secrets management, encryption as a service, and privileged access management. | 🔄 |
| **VictoriaMetrics** | Fast, cost-effective, and scalable solution for monitoring and managing time series data. It delivers high performance and reliability, making it an ideal choice for businesses of all sizes. | 🔄 |
| **vip-manager** | Manages a virtual IP based on state kept in etcd or Consul. | 🔄 |
| **yopass** | Secure sharing of secrets, passwords and files. | 🔄 |
