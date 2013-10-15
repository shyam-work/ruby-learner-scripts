#!/usr/local/bin/ruby

require 'faraday'

module HttpHelper

def do_get(targetUrl, getParams = {}, headers = {})
conn = Faraday.new;
conn.params = getParams;
conn.headers = headers;
response = conn.get(targetUrl);
return response;
end

def do_post(targetUrl, getParams = {}, headers = {})
conn = Faraday.new;
conn.params = getParams;
conn.headers = headers;
response = conn.post(targetUrl);
return response;
end

end

#include HttpHelper;

#response = do_get('http://www.yahoo.com');
#puts response.body;
#puts 'Found status from get: ' + response.status.to_s;
#
#response = do_post('http://www.yahoo.com');
#puts response.body;
#puts 'Found status from post: ' + response.status.to_s;
