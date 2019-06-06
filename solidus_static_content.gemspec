Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_static_content'
  s.version     = '1.0.0'
  s.summary     = 'Extention to manage the static pages for your Spree shop.'
  s.description = s.summary
  s.required_ruby_version = '>= 1.9.3'

  s.authors      = [%q{Peter Berkenbosch}, %q{Roman Smirnov}]
  s.email        = 'peter@pero-ict.nl'
  s.homepage     = 'http://spreecommerce.com/extensions/139-static-content'
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
  s.add_development_dependency 'rspec-rails',  '~> 3.5'
  s.add_development_dependency 'sqlite3', '~> 1.3.6'
  s.add_development_dependency 'poltergeist', '~> 1.10'
  s.add_development_dependency 'simplecov', '~> 0.12'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'test-unit'
end
