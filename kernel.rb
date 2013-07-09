#!/usr/local/bin/ruby
#
my_var_shyam = 2
puts global_variables.to_s
puts "=================="
puts local_variables.to_s
puts "=================="
pid = spawn('ls');
Process.detach(pid)
