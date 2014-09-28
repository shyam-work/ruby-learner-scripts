#!/usr/local/bin/ruby
puts 'hello world';

aa = [ 1, 2, 3, 4, 5];
puts aa.inspect;
puts aa.class;

bb = {'cc' => 'dd'};
bb['a'] = 'b';
puts bb.inspect;

aa.each do |b|
    puts "Going through " + b.to_s;
    puts "Same as Going through #{b}" ;
end;

bb.each do |b, c|
    puts "Going through " + b.to_s + ' ' + c.to_s;
end;

puts bb.class;

class OurClass
    attr_accessor :abc
    def initialize()
        @abc = Random.rand (33..77);
    end

    def doStuff
        puts "hello this is ourclass #{@abc}";
    end
end

inst = OurClass.new;
inst.doStuff;

objArr = Array.new;
for i in (1...10) 
    objArr.push(OurClass.new);
end

doer = Proc.new { |current|
    current.doStuff;
}


objArr.each &doer;

puts "=============="

objArr.each do |thisOne|
    thisOne.doStuff;
end

def abc 
    yield
end

def abcdefg  &my_proc
    yield;
end

def printer 
    puts 'i am printer function';
end

abc { ||
    puts 'hello';
    #return; // Results in Local Jump error since the block is just like a #define.
}
abc &method(:printer);

abcdefg { ||
    puts 'hello';
    #return; // Results in Local Jump error since the block is just like a #define.
}

abcdefg &method(:printer);



puts Random.rand (1...33)
