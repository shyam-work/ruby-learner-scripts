#!/usr/local/bin/ruby

require 'net/http'
require 'uri'
if (ARGV.size() == 0) 
 puts "Needs one argument. (URL to retrieve)";
 exit;
end
$myPage = ARGV[0];
h = Net::HTTP.new($myPage, 80);
puts "Fetching: #{$myPage}";
resp, data = h.get('/')
 puts "Got #{$myPage}: #{resp.message}"
if resp.message == "OK"
  puts 'found response';
  puts data;
  puts resp.body;
else
  puts 'not an ok response'
  puts resp.message
  resp.inspect
  data.inspect
end
