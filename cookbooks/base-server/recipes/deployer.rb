
group "deployer" do
  gid 1100
  action [:create, :modify]
end
user "deployer" do
  uid 1100
  gid 1100
  home "/home/deployer"
  shell "/bin/bash"
  supports :manage_home => true
  action [:create, :modify]
end

directory "/home/deployer/.ssh" do
  owner 'deployer'
  group 'deployer'
  mode '0700'
  action :create
end
