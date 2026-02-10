# DevOps Tools & Skills Reference

This document lists DevOps tools and technologies organized by category, including priority for learning and usage.

---

## 1️⃣ Version Control / Source Code Management
| Tool | Priority | Notes |
|------|---------|-------|
| Git (GitHub, Azure Repos, Bitbucket) | Must | Branching strategies, PR workflows, merge policies |
| GitLab (optional) | Optional | Alternative VCS with integrated CI/CD |

---

## 2️⃣ Continuous Integration / Continuous Deployment (CI/CD)
| Tool | Priority | Notes |
|------|---------|-------|
| Azure DevOps Pipelines | Must | YAML pipelines, multi-stage builds, approvals |
| Jenkins | Recommended | Optional for generic CI/CD knowledge |
| GitHub Actions | Recommended | Optional, cloud-native CI/CD |
| SonarQube | Recommended | Code quality analysis in pipelines |

---

## 3️⃣ Build & Packaging Tools
| Tool | Priority | Notes |
|------|---------|-------|
| Maven / Gradle (Java) | Recommended | Build automation |
| npm / yarn (Node.js) | Recommended | Build/package JS apps |
| NuGet / dotnet CLI (.NET) | Recommended | Build/package .NET apps |
| Artifact Repositories (Azure Artifacts, JFrog Artifactory) | Must | Store & manage artifacts, Docker images |

---

## 4️⃣ Infrastructure as Code (IaC)
| Tool | Priority | Notes |
|------|---------|-------|
| Terraform | Must | Provision Azure / AWS resources, modules, variables |
| ARM Templates / Bicep | Recommended | Azure-native IaC |
| Ansible | Recommended | Configuration management & automation |

---

## 5️⃣ Cloud Platforms
| Cloud / Service | Priority | Notes |
|-----------------|---------|-------|
| Azure | Must | VMs, Storage, Networking, AKS, Azure Key Vault, Monitor |
| Azure Kubernetes Service (AKS) | Must | Managed Kubernetes |
| Azure Key Vault | Must | Secrets & credentials management |
| AWS Cloud (EC2, S3, IAM basics) | Recommended | Optional multi-cloud exposure |
| AWS Secrets Manager | Recommended | Optional, multi-cloud secret management |

---

## 6️⃣ Containers & Orchestration
| Tool | Priority | Notes |
|------|---------|-------|
| Docker | Must | Build/run containers, Dockerfile, volumes, networks |
| Kubernetes | Must | Pods, Deployments, Services, Ingress, ConfigMaps, Secrets, StatefulSets |
| Helm Charts | Must | Deploy apps in Kubernetes efficiently |
| Docker Compose | Recommended | Local multi-container setup |

---

## 7️⃣ Monitoring & Logging
| Tool | Priority | Notes |
|------|---------|-------|
| Prometheus | Must | Metrics collection |
| Grafana | Must | Dashboard & visualization |
| Azure Monitor & Application Insights | Must | Metrics, logs, alerts |
| ELK Stack (Elasticsearch, Logstash, Kibana) | Recommended | Logging & analysis |
| OpenTelemetry | Recommended | Tracing / observability |
| SonarQube | Recommended | Optional in pipelines |
| OWASP ZAP | Optional | Security testing |

---

## 8️⃣ Security & Secrets Management
| Tool | Priority | Notes |
|------|---------|-------|
| HashiCorp Vault | Recommended | Multi-environment secret management |
| Azure Key Vault | Must | Integrated with pipelines and Azure apps |
| AWS Secrets Manager | Recommended | Optional, multi-cloud |
| VPN & Networking Basics | Must | Firewalls, NSGs, Network Policies |

---

## 9️⃣ Scripting & Automation
| Tool | Priority | Notes |
|------|---------|-------|
| PowerShell | Must | Automate Azure & pipelines tasks |
| Bash / Shell scripting | Must | Linux automation, container & K8s scripts |
| Azure CLI | Must | Cloud automation and resource management |
| Python (optional) | Optional | Automation, scripts, API integration |

---

## 10️⃣ Collaboration & Documentation
| Tool | Priority | Notes |
|------|---------|-------|
| Jira | Must | Task tracking & project management |
| Confluence / Wiki | Recommended | Documentation and knowledge sharing |
| Slack / Teams | Optional | Communication & notifications |

---

## 11️⃣ Operating Systems
| OS | Priority | Notes |
|----|---------|-------|
| Linux | Must | Servers, containers, Bash scripting |
| Windows / WSL | Recommended | PowerShell, Azure CLI, hybrid environments |

---

## Notes / Learning Strategy

- **Focus on "Must" skills first** → Core DevOps pipeline + Cloud + Containers + IaC  
- **Recommended skills** → Give bonus points in interviews, useful in real projects  
- **Optional skills** → Nice to know
