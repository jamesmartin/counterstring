# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |s|
  s.name          = "counter_string"
  s.version       = VERSION
  s.author        = "James Martin"
  s.email         = "counterstring@jmrtn.com"
  s.homepage      = "http://github.com/jamesmartin/counterstring"
  s.platform      = Gem::Platform::RUBY
  s.summary       = "A class for generating self documenting strings"
  s.description   = "Counter strings are self documenting strings with respect to their length. This class will create counter strings of arbitrary length."
  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec", "~> 3.2"
end
