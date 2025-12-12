# 🚀 Cloud-Native DevOps Demo Project

![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![Docker](https://img.shields.io/badge/container-docker-blue)
![Kubernetes](https://img.shields.io/badge/orchestration-kubernetes-326ce5)
![Terraform](https://img.shields.io/badge/IaC-terraform-623ce4)

## 📖 项目简介

这是一个全栈 DevOps 实践项目，旨在演示现代云原生应用的完整生命周期。本项目涵盖了从代码开发、容器化打包、基础设施即代码 (IaC)、Kubernetes 编排到持续集成/持续部署 (CI/CD) 及监控的全流程。

主要用于学习和演示以下技术栈的整合使用：Linux, Docker, K8s, Python, AWS, Terraform, ArgoCD, Prometheus, Grafana.

---

## 🛠 技术栈 (Tech Stack)

本项目使用了以下核心技术：

- **应用层**: [Python (Flask)](./app) - 一个简单的 Web 服务。
- **容器化**: [Docker](./Dockerfile) - 用于构建轻量级应用镜像。
- **编排**: [Kubernetes (K8s)](./k8s) - 负责应用的部署、扩展和管理。
- **基础设施**: [Terraform](./infra) - 自动化配置 AWS 云资源 (EC2/EKS)。
- **CI/CD**: [GitHub Actions](./.github/workflows) - 自动化构建与测试流水线。
- **GitOps**: [ArgoCD](https://argoproj.github.io/cd/) - 声明式持续交付工具。
- **监控**: Prometheus & Grafana - 系统指标收集与可视化面板。

---

## 📂 目录结构

```text
.
├── app/                 # Python 源代码
│   ├── app.py           # Flask 主程序
│   └── requirements.txt # Python 依赖
├── infra/               # Terraform 基础设施代码
│   ├── main.tf          # AWS 资源定义
│   └── variables.tf     # 变量定义
├── k8s/                 # Kubernetes 部署清单 (Manifests)
│   ├── deployment.yaml  # Deployment 定义
│   └── service.yaml     # Service 定义
├── .github/
│   └── workflows/       # GitHub Actions CI 配置
├── Dockerfile           # Docker 构建文件
└── README.md            # 项目说明文档


学习路线总结
如果你想真的学会，请按照这个顺序去 Google 搜索并实操教程：
入门周：学习 Linux 常用命令（cd, ls, grep, chmod）和 Git 基础（add, commit, push）。
代码周：用 Python 写个 Hello World，并用 Docker 把它跑起来。
云原月：安装 Minikube (本地 K8s)，试着把你的 Docker 容器部署进去。
工程化月：学习 GitHub Actions 自动构建，了解 ArgoCD。
监控月：在 K8s 里安装 Prometheus + Grafana，看懂那些图表。
进阶：去 AWS/阿里云 注册个免费账号，用 Terraform 开一台真正的云服务器。

testtest
