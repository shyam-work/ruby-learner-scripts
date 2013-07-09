#!/usr/local/bin/ruby
#Great examples here: 
#http://www.fincher.org/tips/Languages/Ruby/
#
# for (1..5) is inclusive, for (1...5) is exclusive of 5.

$i = 0;
$num = 5;

while $i < $num  do
   puts("Inside the loop i = #$i" );
   $i +=1;
end

$i = 0;
$num = 5;
begin
   puts("Inside the loop i = #$i" );
   $i +=1;
end while $i < $num


$i = 0;
$num = 5;

until $i > $num  do
   puts("Inside the loop i = #$i" );
   $i +=1;
end

$i = 0;
$num = 5;
begin
   puts("Inside the loop i = #$i" );
      $i +=1;
end until $i > $num

for i in 0..5
   puts "Value of local variable is #{i}"
end

j = 20;
for i in 10..j
   puts "Value of local variable is #{i}"
end

(0..5).each do |i|
   puts "Value of local variable is #{i}"
end

(20..22).each { |i| puts "Value of local variable is #{i}" }

i = 0;
loop do
puts i;
i = i + 1;
break if (i > 3) 
end

puts `pwd`

require 'logger'
logg = Logger.new('./abc.log', 'daily');
logg.debug('hello world');

t = Time.now  
# # # to get day, month and year with century  
# # # also hour, minute and second  
puts "Current time: " + t.strftime("%d/%m/%Y %H:%M:%S")  
