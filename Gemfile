source 'https://rubygems.org/'

branch = ENV.fetch('SOLIDUS_BRANCH', 'master')
gem 'solidus', github: 'solidusio/solidus', branch: branch

case ENV['DB']
when 'postgresql'
  gem 'pg'
when 'mysql'
  gem 'mysql2'
else
  gem 'sqlite3'
end

gem 'rails-controller-testing', group: :test
gem 'solidus_extension_dev_tools', github: 'solidusio-contrib/solidus_extension_dev_tools'

gemspec
