# frozen_string_literal: true

require_relative 'lib/solidus_static_content/version'

Gem::Specification.new do |spec|
  spec.name = 'solidus_static_content'
  spec.version = SolidusStaticContent::VERSION
  spec.authors = ['Peter Berkenbosch', 'Roman Smirnov']
  spec.email = 'peter@pero-ict.nl'

  spec.summary = 'Extension to manage the static pages for your Solidus store.'
  spec.description = 'Manage the static pages of your Solidus store or replace existing pages with a static version'
  spec.homepage = 'https://github.com/solidusio-contrib/solidus_static_content#readme'
  spec.license = 'BSD-3-Clause'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/solidusio-contrib/solidus_static_content#readme'
  spec.metadata['changelog_uri'] = 'https://github.com/solidusio-contrib/solidus_static_content/releases'

  spec.required_ruby_version = Gem::Requirement.new('>= 2.5')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  files = Dir.chdir(__dir__) { `git ls-files -z`.split("\x0") }

  spec.files = files.grep_v(%r{^(test|spec|features)/})
  spec.test_files = files.grep(%r{^(test|spec|features)/})
  spec.bindir = "exe"
  spec.executables = files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'deface', '~> 1.0'
  spec.add_dependency 'solidus_core', ['>= 2.0.0', '< 4']
  spec.add_dependency 'solidus_support', '~> 0.6'

  spec.add_development_dependency 'solidus_dev_support'
end
