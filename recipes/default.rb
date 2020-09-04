#
# Cookbook:: oci_caas_bastion
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe '::base'
include_recipe '::gauth'
include_recipe '::firewalld'
include_recipe '::clamav'
include_recipe 'wazuh_agent::default'