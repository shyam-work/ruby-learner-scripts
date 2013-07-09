#!/usr/local/bin/ruby

line1 = "Cats are smarter than dogs";
line2 = "Dogs also like meat";
searchFor = /ABC/;
puts searchFor.inspect;
if ( line1 =~ /^Cats(.*)/ )
  puts "Line1 starts with Cats"
end

if ( line2 =~ /Dogs(.*)/ )
    puts "Line2 starts with Dogs"
end

if ( line2 =~ searchFor )
  puts "Found what we are looking for"
else
  puts "Could not find '#{searchFor}'  in '#{line2}' . Too bad"
end

searchFor = /(ABC){1,2}/

line3 = "ABCABCABCABC"
if (line3 =~ searchFor)
  puts "line3: Found it in '#{line3}'"
else
  puts "line3: Could not find it in '#{line3}'"
end

