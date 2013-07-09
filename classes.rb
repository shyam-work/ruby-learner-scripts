#!/usr/bin/ruby
#
class Person
  attr_accessor :fname, :lname
def initialize(fname, lname)
    @fname = fname
    @lname = lname
end
def to_s
    "Person: #@fname #@lname"
end
end
    person = Person.new("Augustus","Bondi")
    print person
    puts "\n"
    puts person.fname
