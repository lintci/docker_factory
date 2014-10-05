#
# Cookbook Name:: docker_factory
# Recipe:: default
#
# Copyright (C) 2014 Allen Madsen
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'docker::default'
include_recipe 'packer::default'

link "/usr/local/packer-#{node[:packer][:version]}/packer" do
  to "/usr/local/packer-#{node[:packer][:version]}/packer-packer"
end

docker_image 'ubuntu:trusty'
