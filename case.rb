#!/usr/local/bin/ruby
#
#Case statements use === function for checking. So in your class you can override this method  as appropriate

car = "Patriot"

manufacturer = case car #with value to match
when "Focus" then "Ford"
when "Navigator" then "Lincoln"
when "Camry", "Corolla" then "Toyota"
else "Unknown"
end

puts manufacturer

case
 when car.match(/^C.*/) then
    puts "starts with a C"
 when car.match(/^T.*/) then
    puts "starts with a T"
  else 
    puts "Does not start"
end

puts case #puts the result of the case statement which is an expression.
 when car.match(/^C.*/) then
    "starts with a C"
 when car.match(/^T.*/) then
    "starts with a T"
  else 
    "Does not start"
end

car = "abc"

arr = [ "abc", "def", /^D.*/ ]
case car
    when *arr
        puts "Matches something in the array"
    else
        puts "Matches nothing in there"
end
