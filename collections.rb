#!/usr/bin/ruby

cars = {
'altima' => 'nissan',
'camry' => 'toyota',
'rx7' => 'mazda'
}

puts cars['rx7']   
puts cars['does_not_exist']   


toppings = Hash["pancakes","syrup","Pizza","Pepper","Cereal","Sugar"]
puts toppings.inspect

toppings = Hash["pancakes","syrup","Pizza","Pepper","Cereal","Sugar"]
toppings.each{|key, value| puts "#{key} points to #{value}"}
