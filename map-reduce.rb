#!/usr/bin/ruby
#
fileNames = [ 'a.txt', 'b.txt', 'c.txt' ] ;

def countLines(fileName) 
return rand(2000);
end

countLinesArray = fileNames.collect { |currentFile| countLines(currentFile) } ;

puts countLinesArray.inspect;


totalLines = countLinesArray.inject(0) { | cumulative, currentCount | cumulative + currentCount } ;

puts totalLines;
