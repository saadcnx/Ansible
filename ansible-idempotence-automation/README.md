### ➡️ Ansible Idempotence Automation

A practical Ansible project focused on implementing, testing, and validating idempotent automation.
Demonstrates how to design playbooks that produce predictable, repeatable results across multiple executions.

This project showcases real-world Ansible idempotence principles by comparing non-idempotent
and idempotent automation patterns.

It covers:
- Identifying non-idempotent tasks
- Refactoring shell-based tasks into proper Ansible modules
- Managing users, packages, files, and services idempotently
- Using handlers, conditions, registers, and assertions
- Verifying idempotence through automated test scripts

🛠️ What This Project Demonstrates
- ✔ Idempotent file, user, and package management  
- ✔ Safe service configuration using handlers  
- ✔ Avoiding non-idempotent shell/command usage  
- ✔ Detecting unnecessary changes with repeated runs  
- ✔ Automated idempotence validation scripts  
- ✔ Production-style Ansible best practices

▶️ How to Run
ansible-playbook playbooks/master-idempotent.yml --diff
- ./test-idempotence.sh
- ./validate-idempotence.sh

🎯 Key Learning Outcome
Running the same playbook multiple times results in the same system state
with no unintended changes — proving true idempotent automation.

![Screenshot]  <img width="1534" height="715" alt="non-indopment" src="https://github.com/user-attachments/assets/d1537f3d-3d50-44dd-85cd-83ced9bab32f" />
<img width="907" height="881" alt="master-indopment" src="https://github.com/user-attachments/assets/25ad5a93-77c0-4f3d-88d5-72e4e8bb90bb" />
<img width="970" height="513" alt="master-result" src="https://github.com/user-attachments/assets/79b9d35d-96cc-470e-9521-d8aac812212c" />
<img width="769" height="648" alt="bash_test_indempotence" src="https://github.com/user-attachments/assets/4671ccc5-adc6-423b-9d3a-c3d208c23242" />
<img width="832" height="718" alt="testing _from_bash_script" src="https://github.com/user-attachments/assets/d203cad1-2ee1-4192-b266-5843854fadd5" />
<img width="852" height="483" alt="advance-test" src="https://github.com/user-attachments/assets/f8a4ad8a-b93c-43b1-b9c3-cc9fb90f95f3" />



📂 Project Structure
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

