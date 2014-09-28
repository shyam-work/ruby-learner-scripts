#!/usr/bin/ruby
#
class Person
    attr_accessor :fname, :lname
    #static variable
    @@count = 0;

    def initialize(fname, lname)
        @fname = fname
        @lname = lname;
        @@count = @@count + 1;
    end

    def to_s
        "Person: #@fname #@lname"
    end

    #static method
    def self.counter;
        return @@count;
    end
end

person = Person.new("Augustus","Bondi")
print person
puts "\n"
puts person.fname
puts Person.counter;
