#!/usr/local/bin/ruby
prev = 1
hello = lambda {|x| lambda {puts x}}
k = hello.call("Hello world")
k.call

abc = [ 1, lambda {|x| return [3 + x, lambda {|y| 3 + y}] }]
d, e = abc
puts d
d,e = e.call(d)
puts d
d,e = e.call(d)
puts d
class Abc
    def initialize
        @abc = [ 1, 
                 lambda {
                    |x| return [3 + x, lambda {|y| 3 + y}] 
                }
        ]
        @d, @e = @abc
    end

    def getNext
        @abc = [ @d, 
                 lambda {
                    |x| return [3 + x, lambda {|y| 3 + y}] 
                }
        ]
        @d, @e = @abc
    end

    def getNext
        puts "d is " + @d.to_s
        @e = lambda { @d + 3 }
        @d = @e.call
        @d
    end
end
inst = Abc.new
puts inst.getNext
puts inst.getNext
puts inst.getNext
puts inst.getNext
puts inst.getNext
puts inst.getNext
