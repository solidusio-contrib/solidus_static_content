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

  # We need to go back to the gem root since extension:test_app changes
  # the working directory to be the dummy app.
  cd __dir__
end

RSpec::Core::RakeTask.new(:specs, [] => FileList[test_app_path]) do |t|
  # Ref: https://circleci.com/docs/2.0/configuration-reference/#store_test_results
  if ENV['TEST_RESULTS_PATH']
    t.rspec_opts =
      "--format progress " \
      "--format RspecJunitFormatter  --out #{ENV['TEST_RESULTS_PATH']}"
  end
end

task :default => :specs
