name "base-server-localhost"
description " Initial set of configuration on localhost"
require 'json'

## Reset some attributes to their default/nil values
default_attributes(
    "data_bag_item" => "localhost"
)

run_list(
  "recipe[base-server]", 
  "recipe[base-server::aliases]", 
  "recipe[base-server::deployer]",
  "recipe[base-server::netrc]" 
)
