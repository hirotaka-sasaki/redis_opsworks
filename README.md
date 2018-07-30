# redis_opsworks_cookbook

These recipe makes Redis settings for Rails.

## Configuration Examples
In Custom Json of Stack setting

```
{
  "deploy": {
    "app_name" {
      "redis": {
        "host": "redis://your_redis_host.com",
        "port": "6379" # Your redis port
      }
    }
  }
}
```

## Opsworks Setup
* Deploy: `redis_opsworks_cookbook::generate`

## Rails Settings
In Redis configuration file lik `config/initializers/redis.rb`,

```
REDIS_CONFIG = YAML::load_file(Rails.root.join('config', 'redis.yml'))
$redis = Redis.new(:host => REDIS_CONFIG['host'], :port => REDIS_CONFIG['port'])
```

### Supplement
I have been able to find the solution, but there is a case that above code doesn't work.
In that case, please add the following code to `deploy/before_migrate.rb` of your Rails Application.

```
app = :your_app_name
deploy_config = node[:deploy][app]
current_release = release_path

template "#{current_release}/config/redis.yml" do
  source "redis.yml.erb"
  cookbook "redis_opsworks_cookbook"
  mode "0660"
  group deploy_config[:group]
  owner deploy_config[:user]
  variables(
    :redis => deploy_config[:redis] || {}
  )
end
```
