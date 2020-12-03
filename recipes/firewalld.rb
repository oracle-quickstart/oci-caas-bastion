#
# Cookbook:: oci_caas_bastion
# Recipe:: firewalld
#

firewalld_rich_rule 'ssh_add' do
  zone 'public'
  family 'ipv4'
  source_address node['vcn_cidr_block']
  port_number '22'
  port_protocol 'tcp'
  log_prefix 'ssh'
  log_level 'info'
  firewall_action 'accept'
  action :add
end