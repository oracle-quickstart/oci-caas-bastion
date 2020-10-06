name 'oci_caas_bastion'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures oci_caas_bastion'
version '0.3.0'
chef_version '>= 16.0'

depends 'firewalld'
depends 'wazuh_agent'
depends 'clamav'
depends 'selinux_policy'

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
