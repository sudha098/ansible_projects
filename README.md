
# Ansible Automation Project

This repository contains a collection of Ansible playbooks, roles, and configuration files designed to automate the provisioning, configuration, and management of various infrastructure components and services.

---

## Repository Structure

* `roles/` - Directory for Ansible roles, modular units of automation.
* `ansible.cfg` - Configuration file for Ansible settings.
* `inventory` - Hosts and groups inventory file.
* Playbooks and scripts:

  * `apache.yml` - Playbook to install and configure Apache HTTP server.
  * `configure_ntp.yml` - Playbook to configure NTP for time synchronization.
  * `create_lvm_partition.yml` - Automates LVM partition creation and management.
  * `create_repo.sh` - Shell script to create a local repository.
  * `create_user_based_on_condition.yml` - User management playbook with conditional logic.
  * `gen_hosts_file.yml` - Generates or manages the `/etc/hosts` file.
  * `install_packages.yml` - Installs required packages on target hosts.
  * `load_balancer.yml` - Configures load balancer settings.
  * `modify_file.yml` - Playbook to modify files with specific changes.
  * `user_list.yml` - Manages user accounts and groups.
  * `vault.yml` - Playbook interacting with Ansible Vault or secrets management.
  * `web.yml` - Web server or application deployment playbook.
* Templates:

  * `hosts.j2` - Jinja2 template for hosts file generation.

---

## Usage

### Prerequisites

* Ansible installed on the control node.
* SSH access to target hosts.
* Proper inventory setup in the `inventory` file.
* Necessary privileges (sudo) on target hosts.

### Running Playbooks

To execute a playbook:

```bash
ansible-playbook -i inventory <playbook_name>.yml
```

For example, to install Apache:

```bash
ansible-playbook -i inventory apache.yml
```

---

## Key Playbooks Description

* **apache.yml**: Installs and configures the Apache HTTP server.
* **configure_ntp.yml**: Ensures NTP service is installed and configured for time sync.
* **create_lvm_partition.yml**: Automates the setup of LVM partitions on hosts.
* **create_user_based_on_condition.yml**: Creates users based on certain conditions or variables.
* **gen_hosts_file.yml**: Generates the `/etc/hosts` file using the Jinja2 template.
* **install_packages.yml**: Installs packages defined in the playbook.
* **load_balancer.yml**: Configures load balancing services (e.g., HAProxy or Nginx).
* **modify_file.yml**: Performs specific modifications on configuration files.
* **user_list.yml**: Manages user accounts and group memberships.
* **vault.yml**: Handles secrets and secure data using Ansible Vault.
* **web.yml**: Deploys and configures web services or applications.

---

## Templates

* **hosts.j2**: Template used to generate the hosts file dynamically based on inventory variables.

---

## Additional Notes

* The `create_repo.sh` script assists in setting up local repositories if needed.
* Vault playbooks and configurations should be secured and handled carefully.
* Always test playbooks in a staging environment before production.

---

## Contact

For any issues or contributions, please create an issue or pull request in the repository.
