name 'oci_caas_bastion'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'Universal Permissive License v1.0'
description 'Installs/Configures oci_caas_bastion'
version '0.4.1'
chef_version '>= 16.0'

depends 'oci_caas_base'
depends 'firewalld'
depends 'selinux_policy'
depends 'wazuh_agent'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/oci_caas_bastion/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/oci_caas_bastion'
