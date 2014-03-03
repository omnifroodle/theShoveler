# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'theShoveler/version'

Gem::Specification.new do |spec|
  spec.name          = "theShoveler"
  spec.version       = TheShoveler::VERSION
  spec.authors       = ["Matt Overstreet"]
  spec.email         = ["matt.overstreet@gmail.com"]
  spec.description   = %q{Tool for loading random data into some web/network service}
  spec.summary       = %q{Tool for loading random data into some web/network service}
  spec.homepage      = "http://github.com/omnifroodle/theShoveler"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", '~> 0'
  spec.add_development_dependency "minitest", "~> 5.2"

  spec.add_dependency 'rsolr', '~> 0'
  spec.add_dependency 'thor', '~> 0'
end
