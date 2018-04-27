
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_admin_fields/version'

Gem::Specification.new do |spec|
  spec.name = 'rails_admin_fields'
  spec.version = RailsAdminFields::VERSION
  spec.authors = ['Alex M']

  spec.summary = 'rails_admin fields'
  spec.homepage = 'https://github.com/bit-forge-org/rails_admin_fields'
  spec.license = 'MIT'

  spec.files = %w[README.md Rakefile LICENSE.txt]
  spec.files += Dir['lib/**/*.rb']
  spec.files += Dir['app/**/*.haml']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_runtime_dependency 'rails_admin', '~> 1.3.0'
end
