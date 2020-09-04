#
# Cookbook:: oci_caas_bastion
# Recipe:: gauth
#
# Copyright:: 2020, The Authors, All Rights Reserved.

include_recipe 'yum-epel'

package 'google-authenticator' do
  action :install
end

cookbook_file '/etc/pam.d/sshd' do
  source 'pam.d.sshd'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

cookbook_file '/etc/ssh/sshd_config' do
  source 'sshd_config'
  owner 'root'
  group 'root'
  mode '0600'
  action :create
  notifies :restart, 'service[sshd]', :immediately
end

service 'sshd' do
  action :enable
end