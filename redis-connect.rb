#!/usr/local/bin/ruby
require 'hiredis'
require 'redis'

puts "Hello to redis";
if (ARGV.size() < 2) 
 puts "Usage: redis-connect.rb get|set key <value>";
 exit;
end

redis = Redis.new();

redis = Redis.new(:host => "localhost", :port => 6379)

if (ARGV[0] == 'get') 
  value = redis.get(ARGV[1]);
end
if (ARGV[0] == 'set') 
  redis.set(ARGV[1], ARGV[2]);
  value = redis.get(ARGV[1]);
end

redis.set(ARGV[0], ARGV[1]);

puts "Found value: #{value}";
