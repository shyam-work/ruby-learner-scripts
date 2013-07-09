#!/usr/local/bin/ruby

def fact(n)
    if n == 0
        return 1
    else
        return n * fact(n-1)
    end
end

puts fact(ARGV[0].to_i)
