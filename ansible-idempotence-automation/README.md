# Ansible Idempotence Automation

A practical Ansible project focused on implementing, testing, and validating idempotent automation.
Demonstrates how to design playbooks that produce predictable, repeatable results across multiple executions.

This project showcases real-world Ansible idempotence principles by comparing non-idempotent
and idempotent automation patterns.

### It covers:
- Identifying non-idempotent tasks
- Refactoring shell-based tasks into proper Ansible modules
- Managing users, packages, files, and services idempotently
- Using handlers, conditions, registers, and assertions
- Verifying idempotence through automated test scripts
  
### 🛠️ What This Project Demonstrates
- ✔ Idempotent file, user, and package management  
- ✔ Safe service configuration using handlers  
- ✔ Avoiding non-idempotent shell/command usage  
- ✔ Detecting unnecessary changes with repeated runs  
- ✔ Automated idempotence validation scripts  
- ✔ Production-style Ansible best practices

### ▶️ How to Run
- ansible-playbook playbooks/master-idempotent.yml --diff
- ./test-idempotence.sh
- ./validate-idempotence.sh

### 🎯 Key Learning Outcome
Running the same playbook multiple times results in the same system state
with no unintended changes — proving true idempotent automation.

### 📂 Project Structure
``` text
ansible-idempotence-automation/
├── ansible.cfg
├── inventory
├── playbooks/
│   ├── non-idempotent.yml
│   ├── idempotent-files.yml
│   ├── idempotent-packages.yml
│   ├── idempotent-services.yml
│   ├── master-idempotent.yml
│   ├── problematic.yml
│   ├── fixed-idempotent.yml
│   └── advanced-idempotent.yml
├── test-idempotence.sh
├── validate-idempotence.sh
└── README.md
