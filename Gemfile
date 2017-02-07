source 'https://rubygems.org/'

branch = ENV.fetch('SOLIDUS_BRANCH', 'master')
gem 'solidus', github: 'solidusio/solidus', branch: branch

if branch == 'master' || branch >= "v2.0"
  gem "rails-controller-testing", group: :test
else
  gem "rails_test_params_backport"
end

gem 'pg'
gem 'mysql2'

gemspec
