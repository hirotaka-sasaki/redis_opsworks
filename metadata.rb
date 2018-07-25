name 'redis_opsworks_cookbook'
maintainer 'Hirotaka Sasaki'
maintainer_email 'hirotaka022105@gmail.com'
license 'All Rights Reserved'
description 'Configures and use Redis with Ruby on Rails app working on opsworks'
version '0.1.0'

issues_url 'https://github.com/hirotaka-sasaki/redis_opsworks_cookbook/issues'
source_url 'https://github.com/hirotaka-sasaki/redis_opsworks_cookbook/tree/staging'

recipe 'redis_opsworks_cookbook::generate', 'Create redis.yml under config/ of your Rails Application.'
