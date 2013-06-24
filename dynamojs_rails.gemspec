# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dynamojs_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "dynamojs_rails"
  spec.version       = DynamojsRails::VERSION
  spec.authors       = ["Hank Stoever"]
  spec.email         = ["hstove@gmail.com"]
  spec.description   = %q{A light wrapper for using dynamo.js with Ruby on Rails}
  spec.summary       = %q{A light wrapper for using dynamo.js with Ruby on Rails}
  spec.homepage      = "https://github.com/hstove/dynamojs_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
