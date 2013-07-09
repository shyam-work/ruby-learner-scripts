#!/usr/local/bin/ruby

require 'rest-client'

puts RestClient.get 'http://www.yahoo.com'
