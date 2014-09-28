#!/usr/local/bin/ruby

# Sum some numbers
(5..10).inject {|sum, n| sum + n } #=> 45

# # Multiply some numbers
(5..10).inject(1) {|product, n| product * n } #=> 151200


# find the longest word
longest = %w{ cat sheep bear }.inject do |memo,word|
memo.length > word.length ? memo : word
end
longest #=> "sheep"

# find the length of the longest word
longest = %w{ cat sheep bear }.inject(0) do |memo,word|
memo >= word.length ? memo : word.length
end
longest #=> 5

input = [ 1 ,4, 5, 10 ];
puts input.inspect;

input.each { |a| puts a; } 
ans = input.inject(20) { |ans,n| ans - n ; }
puts ans;

ans = input.inject(25) do |ans,n| 
    ans - n ; 
end;
puts ans;
