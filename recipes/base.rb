#
# Cookbook:: oci_caas_bastion
# Recipe:: base
#
# Copyright:: 2020, The Authors, All Rights Reserved.

cron 'chef_client' do
  action :create
  minute '0,15,30,45'
  user 'root'
  home '/opt/oci-caas/chef'
  command 'chef-client -z --runlist oci_caas_bastion -j /opt/oci-caas/chef/attributes.json'
end

# Install, configure, and enable chrony client
package 'chrony'

cookbook_file '/etc/chrony.conf' do
  source 'chrony.conf'
  owner 'root'
  group 'root'
  mode '0644'
end

service 'chronyd' do
  action :enable
end