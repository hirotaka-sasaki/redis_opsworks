name 'redis_opsworks_cookbook'
maintainer 'Hirotaka Sasaki'
maintainer_email 'hirotaka022105@gmail.com'
license 'All Rights Reserved'
description 'Configures and use Redis with Ruby on Rails app working on opsworks'
version '0.1.0'

recipe 'redis_opsworks_cookbook::generate', 'Create redis.yml under config/ of your Rails Application.'
