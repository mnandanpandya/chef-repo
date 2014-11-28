name "base-server-ec2"
description " Initial set of configuration on ec2 server"
require 'json'

## Reset some attributes to their default/nil values
default_attributes(
    "data_bag_item" => "ec2"
)

run_list(
  "recipe[base-server]", 
  "recipe[base-server::aliases]", 
  "recipe[base-server::deployer]", 
)
