#
# Cookbook Name:: jenkins
# Recipe:: pluging
#
# Copyright 2016, Maruti Nandan Pandya
#
# All rights reserved - Do Not Redistribute
#

plugins = ['Hudson batch task plugin', 'Hudson BIRT Charts Plugin', 'Hudson build timeout plugin',
  'Copy To Slave Plugin', 'JFreeChart Plugin', 'JNA Native Support Plugin', 'Jenkins JSUnit plugin',
  'Log Parser Plugin', 'Legacy Maven 2 job type Plugin', 'Hudson Maven3 Plugin', 'xUnit plugin',
  'Hudson Post build task', 'Hudson :: REST :: Plugin', 'Hudson Sauce OnDemand plugin',
  'Hudson Rake plugin', 'Show Build Parameters plugin', 'Hudson SSH Slaves plugin',
  'XPath Provider Plugin', ]

config = ['credentials', 'Hudson Job Configuration History Plugin']
git  = ['git', 'Hudson GIT plugin', 'Groovy Support Plugin']
formater = ['AnsiColor']
backup = ['Backup Plugin']
job = ['Hudson Parameterized Trigger plugin', ]
view = ['Dashboard View']
ssh = [ 'Publish Over SSH', 'Hudson SCP publisher plugin', 'Jenkins SSH plugin']
reports = ['HTML Publisher plugin', 'Ruby metrics plugin']
notification = ['Hudson Email Extension Plugin', 'Hudson Notification plugin']
release = ['Build Pipeline Plugin','Release Plugin']


plugins = config + git + formater + backup + job + view + ssh + reports + notification + Release
plugins.each do |plugin|
  puts plugin
end
