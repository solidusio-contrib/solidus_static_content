# frozen_string_literal: true

$:.push File.expand_path('lib', __dir__)
require 'solidus_static_content/version'

Gem::Specification.new do |s|
  s.name = 'solidus_static_content'
  s.version = SolidusStaticContent::VERSION
  s.summary       = %q{Extension to manage the static pages for your Solidus store.}
  s.description   = %q{Manage the static pages of your Solidus store or replace existing pages with a static version}
  s.license = 'BSD-3-Clause'

  s.author = ["Peter Berkenbosch", "Roman Smirnov"]
  s.email = 'peter@pero-ict.nl'
  s.homepage = 'https://github.com/solidusio-contrib/solidus_static_content#readme'

  if s.respond_to?(:metadata)
    s.metadata["homepage_uri"] = s.homepage if s.homepage
    s.metadata["source_code_uri"] = s.homepage if s.homepage
    s.metadata["changelog_uri"] = 'https://github.com/solidusio-contrib/solidus_static_content/releases'
  end

  s.required_ruby_version = '~> 2.4'

  s.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  s.test_files = Dir['spec/**/*']
  s.bindir = "exe"
  s.executables = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'solidus_core', ['>= 2.0.0', '< 3']
  s.add_dependency 'solidus_support', '~> 0.4.0'
  s.add_dependency 'deface', '~> 1.0'

  s.add_development_dependency 'solidus_dev_support'
end
