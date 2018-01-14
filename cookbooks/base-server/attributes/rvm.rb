



node['rvm']['rubies'] = [
  "ree-1.8.7",
  "jruby",
  {
    'version' => '1.9.3-p125-perf',
    'patch' => 'falcon',
    'rubygems_version' => '1.5.2'
  }
]

node['rvm']['user_rubies'] = [ "ree-1.8.7", "jruby" ]


node['rvm']['global_gems'] = [
  { 'name'    => 'bundler' },
  { 'name'    => 'rake',
    'version' => '0.9.2'
  },
  { 'name'    => 'rubygems-bundler',
    'action'  => 'remove'
  }
]


node['rvm']['user_global_gems'] = [
  { 'name'    => 'bundler' },
  { 'name'    => 'rake',
    'version' => '0.9.2'
  },
  { 'name'    => 'rubygems-bundler',
    'action'  => 'remove'
  }
]

node['rvm']['rvmrc'] = {
  'rvm_project_rvmrc'             => 1,
  'rvm_gemset_create_on_use_flag' => 1,
  'rvm_trust_rvmrcs_flag'         => 1
}

node['rvm']['rvm_gem_options'] = "--rdoc --ri"
