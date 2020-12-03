#
# Cookbook:: oci_caas_bastion
# Recipe:: totp
#

include_recipe 'yum-epel'

package_list = %w(pam_oath oathtool gen-oath-safe)
package_list.each do |pkg|
  package "install #{pkg}" do
    package_name pkg
    action :install
  end
end

directory '/home/opc/.oath' do
  owner 'opc'
  group 'opc'
  mode '0700'
end

cookbook_file '/home/opc/.oath/setup-totp.sh' do
  source 'setup-totp.sh'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
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

selinux_policy_fcontext '/home/opc/.oath(/.*)?' do
  secontext 'ssh_home_t'
  action :add
end