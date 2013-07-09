#!/usr/local/bin/ruby
#
# http://www.robertsosinski.com/2008/12/21/understanding-ruby-blocks-procs-and-lambdas/ has a great article on this

def callMe (functionParam)
    yield
    yield
end

puts "========================START=================================="

callMe { puts "hello from anonymous block" }
fRef = proc { puts "hello from fRef proc" }

callMe(&fRef)

def thrice_with_local_x
    x = 100
    yield
    yield
    yield
    puts "value of x at end of thrice_with_local_x: #{x}"
end

x = 5
thrice_with_local_x { x += 1;puts "Value of x inside proc is #{x}"; }
puts "value of outer x after: #{x}"

puts "================="
x = 29
fRef = Proc.new { x += 1; puts "Value of x inside proc is #{x}"; }
puts "value of outer x after defining fRef: #{x}"
x = 6
puts "setting x after defining fRef to : #{x}"
thrice_with_local_x  &fRef
puts "value of outer x after: #{x}"
puts "================="
puts "~~~~~~~~~~~~~~~~~"

x = 7
puts "setting x to: #{x}"
thrice_with_local_x &fRef
puts "value of outer x after: #{x}"

puts "~~~~~~~~~~~~~~~~~"

x = 9
puts "setting x before using anonymous block to: #{x} "
thrice_with_local_x { x += 1 }
puts "value of outer x after: #{x}"
puts "~~~~~~~~~~~~~~~~~"

x = 1
puts "setting x before using lambda to: #{x} "
fRef = lambda { x+= 1 }
thrice_with_local_x { x += 1 }

puts "~~~~~~~~~~~~~~~~~"
puts "value of outer x after: #{x}"
puts "========================END=================================="
