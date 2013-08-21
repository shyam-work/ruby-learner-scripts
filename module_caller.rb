#!/usr/local/bin/ruby
require './module1'

class NewAbc
def self.printHello2
    puts "hello world newAbc printHello2";
end
include Abc; #include makes them all instance methods
end

class ExtendedAbc
def self.printHello2
    puts "hello world extendedAbc printHello2";
end

def instanceHello
    puts "This is an instance hello";
end

extend Abc; #extend makes them all class methods
end

j = NewAbc.new;
j.printHello;
NewAbc.printHello2;

ExtendedAbc.printHello;
ea = ExtendedAbc.new;
ea.instanceHello;
