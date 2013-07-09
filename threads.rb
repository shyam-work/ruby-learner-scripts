#!/usr/local/bin/ruby
require 'thread'
sema4 = Mutex.new
i = 0;

def createAThread(&myBlock)
    Thread.new &myBlock
end

a = createAThread {
    for i in 1...10 
        sema4.synchronize {
            puts "Hello world from a"
        }
        File.open(".")
    end
}
b = createAThread {
    for i in 1...10 
        sema4.synchronize {
            puts "Hello world from b"
        }
    end
}
createAThread { puts "print me in one thread" }
abcHandler = Proc.new { puts "This is a handler in a proc object" }
createAThread &abcHandler
