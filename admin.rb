#!/usr/local/bin/ruby
#
a =`ls -lrt`
puts a
h = `hostname`
ip = `ifconfig -a`
puts h
k = ip.split("\n")
k.each { |line| 
    if (line =~ /Link/) 
        puts "Found: " + line;  
    else
        puts "Not a match: " + line;  
    end
}
puts "===================="

filename = "/home/msh/aa.txt";
File.dirname(filename)
File.basename(filename)
File.exists?(filename)

if (File.exists?(filename)) 
    puts "Found file size for #{filename}  " +  File.size(filename).to_s
else
    puts "No such file #{filename}"
end

puts "===================="

case
when File.directory?(filename)
    puts "Is a directory"
else
    puts "Is not a directory"
end

File.executable?(filename)

puts "Creating a file: " 
file = File.new(filename, "w");
file.puts("foobar")
file.close

puts "This is the atime: " + File.open("temp.txt").atime.to_s
File.open("temp.txt").chmod(0600)
#File.open("temp.txt").chown("msh", "msh")
#File.delete(filename)
