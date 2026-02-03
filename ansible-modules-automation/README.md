# Ansible Modules Automation: Multi-OS Package, Docker & Infrastructure Management

## 📌 Project Overview
This project demonstrates **real-world automation using Ansible modules** to manage
Linux systems, packages, Docker containers, and complete infrastructure workflows.

It covers **multi-distribution package management**, **Docker container orchestration**,
and **production-style infrastructure deployment with validation and monitoring**.

---

## 🛠️ Technologies Used
- Ansible
- Linux (Ubuntu / Debian / RedHat concepts)
- Docker & Docker SDK
- YAML
- Nginx
- Cron & Logrotate

---

## 🎯 Key Features
- Multi-OS package management using `apt`, `yum`, and `package`
- Conditional logic based on OS families
- Docker installation and container lifecycle management
- Automated deployment of Nginx, Redis, and MySQL containers
- Infrastructure automation with users, backups, monitoring, and cron jobs
- Validation and testing playbooks with detailed reports
- Error handling and idempotent playbook design

---

## 📂 Playbooks Included

| Playbook | Purpose |
|--------|--------|
| `package-management.yml` | Multi-distribution package installation |
| `advanced-package-management.yml` | Grouped installs with summaries |
| `docker-setup.yml` | Docker & dependencies installation |
| `container-deployment.yml` | Deploy Nginx, Redis, MySQL containers |
| `container-management.yml` | Monitoring, stats, logs & backups |
| `infrastructure-deployment.yml` | Full infrastructure automation |
| `validation-tests.yml` | End-to-end validation & reporting |

---

## 🚀 How to Run

```bash
ansible-playbook playbooks/package-management.yml
ansible-playbook playbooks/docker-setup.yml
ansible-playbook playbooks/container-deployment.yml
ansible-playbook playbooks/infrastructure-deployment.yml
ansible-playbook playbooks/validation-tests.yml

```
## [SCREENSHOT] <img width="1438" height="691" alt="package-management-result" src="https://github.com/user-attachments/assets/c66c4d09-c13b-46dd-ba38-004b31b45565" />
<img width="1545" height="714" alt="package-management" src="https://github.com/user-attachments/assets/cf04e36d-3edb-466a-8b22-8e7bf50356ee" />
<img width="940" height="725" alt="installing-docker" src="https://github.com/user-attachments/assets/7943dd51-a54d-46b1-a04c-a368c6e38e58" />
<img width="1025" height="792" alt="test_pass" src="https://github.com/user-attachments/assets/92e85365-ff23-419e-8f64-b0aeefe06760" />
<img width="1115" height="753" alt="Capture" src="https://github.com/user-attachments/assets/b3703f4a-e4f7-4d17-9e59-216dd7818b99" />
<img width="1098" height="600" alt="infrastructure-deployment" src="https://github.com/user-attachments/assets/3ecb365f-f521-4d13-81bf-c6efed0e5358" />
<img width="1225" height="670" alt="advanced-package-management" src="https://github.com/user-attachments/assets/aab14d36-2598-4256-b9d1-0a709b3bcfd0" />
<img width="1151" height="718" alt="advanced-package-management-result" src="https://github.com/user-attachments/assets/6587c1a8-11e4-42d8-b97b-f347f44b52a4" />
