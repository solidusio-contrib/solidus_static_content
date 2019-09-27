
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'solidus_static_content/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_static_content'
  s.version     = SolidusStaticContent::VERSION
  s.summary     = 'Extention to manage the static pages for your Spree shop.'
  s.description = s.summary
  s.required_ruby_version = '>= 1.9.3'

  s.authors      = [%q{Peter Berkenbosch}, %q{Roman Smirnov}]
  s.email        = 'peter@pero-ict.nl'
  s.homepage     = 'https://github.com/solidusio-contrib/solidus_static_content#readme'
  s.license      = %q{BSD-3}

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'solidus', ['>= 2.3', '< 3']
  s.add_dependency "solidus_support"
  s.add_dependency 'deface', '~> 1.0'

  s.add_development_dependency 'capybara', '~> 2.7'
  s.add_development_dependency 'capybara-screenshot'
  s.add_development_dependency 'factory_bot', '~> 4.7'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'database_cleaner', '~> 1.5'
  s.add_development_dependency 'rspec-rails',  '~> 4.0.0.beta2'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'poltergeist', '~> 1.10'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov', '~> 0.12'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'test-unit'
end
