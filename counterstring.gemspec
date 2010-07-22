require 'rubygems'

SPEC = Gem::Specification.new do |s|
  s.name          = "CounterString"
  s.version       = "0.0.1"
  s.author        = "James Martin"
  s.email         = "jimmymartin@gmail.com"
  s.homepage      = "http://github.com/jamesmartin/counterstring"
  s.platform      = Gem::Platform::RUBY
  s.summary       = "A class for generating self documenting strings"
  s.description   = "Counter strings are self documenting strings. This class will create counter strings of arbitrary length."
  s.files         = ["lib/", "lib/CounterString.rb", "spec/", "spec/CounterString_spec.rb"]
  s.require_path  = ["lib"]
  s.has_rdoc      = false
  s.extra_rdoc_files  = ["README"]
end

if $0 == __FILE__
  #Gem::manage_gems
  Gem::Builder.new(SPEC).build
end
