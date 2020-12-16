# oci_caas_bastion Cookbook

## Description
This cookbook creates a Bastion host running on Oracle Autonomous Linux.
It will open SSH, and configure a one time password for the opc user.

## Requirements

### Platforms
* Oracle Autonomous Linux 7.8+

### Chef
* Chef 16+

### Cookbooks
* oci_caas_base

## Attributes
* node['ossec']['address'] - Wazuh (ossec) server address
* node['ossec']['registration_address'] - Registration address for Wazuh
* node['runlist_name'] - The runlist name used for scheduling Chef via cron

## Recipes
### default
The default recipe will run all of the other recipes in the recommended order.

### firewalld
Managed firewall rules using firewall-cmd

### totp
Sets up totp (one time passwords) for the opc user.

### final
Last recipe in the run list. A catch-all to make sure it runs
after all other recipes.

## Usage
This is intended to be a complete wrapper cookbook for the environment. You can run
everything via the default cookbook.

### First Time Login
The initial one time pin for the opc user is '56000'. You'll be prompted for
this after authenticating with your SSH key (defined during host provisioning).
After the first login, you will be prompted to set up an authenticator program
of your choice. If you fail to do so, you will lose access to the host.

## License
Copyright (c) 2020, Oracle and/or its affiliates. All rights reserved.

Licensed under the Universal Permissive License 1.0 or Apache License 2.0.

See [LICENSE](LICENSE) for more details.