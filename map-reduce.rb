#!/usr/bin/ruby
#
fileNames = [ 'a.txt', 'b.txt', 'c.txt' , 'd.txt', 'e.txt', 'f.txt'] ;

def countLines(fileName) 
#TODO: Actually read the file and such.
return rand(2000);
end

countLinesArray = fileNames.collect { |currentFile| countLines(currentFile) } ;

puts "Result of collect: " + countLinesArray.inspect;

countLinesArray = fileNames.map { |currentFile| countLines(currentFile) } ;

puts "Result of map: " + countLinesArray.inspect;

selectedList = countLinesArray.select { |currentFileLines| currentFileLines > 700 } ;

puts "Files with lines > 700: " + selectedList.inspect;


totalLines = countLinesArray.inject(0) { |cumulative, currentCount| cumulative + currentCount } ;

puts "Result of inject: " + totalLines.to_s;

totalLines = countLinesArray.reduce(0) { |cumulative, currentCount| cumulative + currentCount } ;

puts "Result of reduce: " + totalLines.to_s;
