Counter strings are self documenting strings with respect to their length. CounterString is a class that creates counter strings of arbitrary length.

James Bach, [describes counter strings](http://www.satisfice.com/blog/archives/22) as follows:

"A counterstring is a graduated string of arbitrary length. No matter where you are in the string, you always know the character position. This comes in handy when you are pasting huge strings into fields and they get truncated at a certain point. You want to know how many characters that is."

Here's a simple example of its use as a library:

```ruby
require 'rubygems'
require 'counter_string'

cs = CounterString.new

p cs.generate 35

=> "2*4*6*8*11*14*17*20*23*26*29*32*35*"
```

It's easy to generate counter strings from the command line, too (thanks [@hogfish](https://github.com/hogfish)):

```
$ counter_string 10
2*4*6*8*11
```

The counter string is automatically copied to your clipboard.
