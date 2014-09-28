#!/usr/local/bin/ruby
require 'hiredis'
require 'redis'

puts "Hello to redis browser";

redis = Redis.new();

redis = Redis.new(:host => "localhost", :port => 6379)

puts "List of keys: "

allKeys = redis.keys("*");
allKeys.each { |thisKey|  
        thisType = redis.type(thisKey); 
        if (thisType == 'string')
            thisValue = redis.get(thisKey); 
        elsif (thisType == 'set')
            thisValue = redis.smembers(thisKey); 
        elsif (thisType == 'list')
            thisSize = redis.llen(thisKey);
            thisValue = redis.lrange(thisKey, 0, thisSize);
        else
            thisValue = "unknown";
        end
        puts "Found #{thisKey} of type #{thisType} with value #{thisValue}";
}

