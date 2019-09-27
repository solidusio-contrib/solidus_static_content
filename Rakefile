require 'rake/clean'
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'spree/testing_support/extension_rake'

test_app_path = 'spec/dummy'

CLOBBER.include test_app_path

desc 'Generates a dummy app for testing'
directory test_app_path do
  ENV['LIB_NAME'] = 'solidus_static_content'
  Rake::Task['extension:test_app'].invoke
end

RSpec::Core::RakeTask.new(:specs, [] => FileList[test_app_path])

task :default => :specs
