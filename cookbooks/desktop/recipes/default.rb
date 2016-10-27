  #
# Cookbook Name:: base-server
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# base packages to add
PACKAGES = []
PACKAGES << "patch" << "s3cmd" << "git" << "wget" << "unzip" 
PACKAGES << "screen"  << "subversion" << "vim"


PACKAGES.each do |pkg|
  package pkg do
    action :install
  end
end

execute "apt-get-update" do
  command "apt-get update"
  ignore_failure true
end
