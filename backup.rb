#!/usr/local/bin/ruby
#

dirsToBackup = [
"/etc", 
"/home/msh/devel/ruby"
];
$destination = "/mnt/d/linux-backup";

def doBackup(inputDir) 
    inputDir = inputDir.chomp;
    currentDir = $destination + inputDir;
    command = "sudo rsync -avr #{inputDir} #{currentDir}"
    puts command;
    system "#{command}"
end

puts "Backing upto #{$destination}"
dirsToBackup.each { |currentDir| doBackup(currentDir); }
