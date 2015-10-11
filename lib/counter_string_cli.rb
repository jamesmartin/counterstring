$:.unshift File.dirname(__FILE__)
require 'rubygems'
require 'counter_string'

cs = CounterString.new

def paste_command
  if RUBY_PLATFORM =~ /mswin/
    'clip'
  else
    'pbcopy'
  end
end

if ARGV[0] != nil
  output = cs.generate ARGV[0]
  `echo #{output} | #{paste_command}`
  puts output
else
  puts "Please specify the string length"
end
