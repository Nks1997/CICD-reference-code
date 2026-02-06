# CI/CD References

This repository demonstrates an end-to-end DevOps workflow including **CI/CD pipelines**, **Infrastructure as Code (IaC)**, **containerization**, and **cloud deployments** using:

- Azure
- AWS
- Terraform
- Docker
- Kubernetes
- Azure DevOps
- GitHub Actions

The goal of this repository is to serve as a **reference implementation** for modern DevOps practices across multi-cloud environments.

---

## 📂 Repository Structure

```text
devops-end-to-end-pipeline/
│
├── .github/
│   └── workflows/
│       └── github-actions-ci.yml
│
├── azure-devops/
│   └── azure-pipelines.yml
│
├── docker/
│   └── Dockerfile
│
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
│
├── iac/
│   └── terraform/
│       ├── azure/
│       └── aws/
│
├── scripts/
│   ├── powershell/
│   └── bash/
│
├── app/
│   ├── dotnet/
│   ├── nodejs/
│   └── python/
│
└── README.md
