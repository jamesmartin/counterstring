require 'rubygems'
require 'lib/CounterString'

cs = CounterString.new

if ARGV[0] != nil
	output = cs.generate ARGV[0]
	`echo #{output} | pbcopy`
	puts output
else
	puts "Please specify the string length"
end