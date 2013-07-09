#!/usr/bin/ruby
#
a = 5;
b = 5;
if (a == b) 
    puts "equal";
else 
    puts " not equal";
end

j = [ 'nil', nil, 'false', false ] ;
j.each { |current|
if (current)
    puts "#{current} is true";
else
    puts "#{current} is false";
end

}
