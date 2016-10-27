group "intel" do
  gid 1000
  action [:create, :modify]
end

user "intel" do
  uid 1000
  gid 1000
  home "/home/intel"
  shell "/bin/bash"
  supports :manage_home => true
  action [:create, :modify]
end

directory "/home/intel/.ssh" do
  owner 'intel'
  group 'intel'
  mode '0700'
  action :create
end

# template "/home/intel/.netrc" do
#   source 'netrc-deployer.erb'
#   owner 'intel'
#   group 'intel'
#   mode '0600'
# end
