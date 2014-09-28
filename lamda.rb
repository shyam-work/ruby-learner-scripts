#!/usr/local/bin/ruby

def func (procName)
b = [1, 2, 4, 5];
puts procName.class
b.collect{ |current| procName.call(current); };
end

def func2 (&procName)
b = [1, 2, 4, 5];
puts procName.class
b.collect{ |current| procName.call(current); };
end

def func3 (&procName)
puts procName.class
b = [1, 2, 4, 5];
b.collect{ |current| yield current; };
end

a = Proc.new { |n| puts "Putting in proc.new #{n}"; }
puts "a is #{a.class}"
b = proc { |n| puts "Putting in proc #{n}"; }
puts "b is #{b.class}"
c = lambda { |n| puts "Putting in lambda #{n}"; }
puts "c is #{c.class}"
a.call (3)
func(a);

func2(&b);

func2 do  |n| 
    puts "anonymous #{n}" ;
end;

func3 do  |n| 
    puts "going to yield #{n}" ;
end;
func(c);
b.call(7);


def my_method
    puts "hello method"
    yield
end
     
my_method {puts "hello block"}
my_method {
puts "hello block line 1 braces impl"
puts "hello block line 2 braces impl"
}
my_method do
puts "hello block line 1 do impl"
puts "hello block line 2 do impl"
end

def call_yield (&procName)
    procName.call
    yield
end


abc = lambda do ||
    puts "Via lambda: " + Random.rand(1..55).to_s
end

call_yield &abc

abc = Proc.new  do ||
    puts "Via proc.new: " + Random.rand(1..5).to_s
end

call_yield &abc

call_yield do || 
    puts Random.rand(10..52);
end
