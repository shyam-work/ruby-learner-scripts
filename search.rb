#!/usr/local/bin/ruby
module Search
class SearchMonkey
    @@instance_count  = 0
    attr_writer :howLong
    attr_writer :howDeep
    attr_reader :howLong
    attr_reader :howDeep
    def SearchMonkey.instanceCount
        @@instance_count
    end

    def initialize(pattern, dirList)
        @dirList = dirList
        @pattern = pattern
        @howLong = 3
        @howDeep = 4
        @@instance_count += 1
    end

    def doWork
        puts "Hello world"
        puts to_s
        puts @dirList.to_s
        puts @dirList.length
        @dirList.each { | abc | puts "Length is: #{abc.length}" }
        @dirList.find { | abc | abc == "defjfksdf" }
        puts "Done finding"
        for i in 0...@dirList.length
            puts "Found song: " + @dirList[i].to_s
        end
        doWorkInternal
    end

    def doWorkInternal
    h = { 'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine' }
        puts to_s
        for i in 0...h.length
            puts h.to_s
        end
    end

    public :doWork
    private :doWorkInternal
end

def nTimes(aThing)
  return proc { |n| aThing * n }
end

def addOrMultiply(times)
    number = 3
    if times =~ /^t/
      calc = proc { |n| n*number }
    else
        calc = proc { |n| n+number }
    end
    puts((1..10).collect(&calc).join(", "))
end

def doCollect(inputArray, &proc) 
    outputArray = Array.new
    for i in 0...inputArray.length
            outputArray[i] = yield inputArray[i]
    end
    return outputArray
end

def doEach(inputArray, &proc) 
    for i in 0...inputArray.length
            yield inputArray[i]
    end
end

def fileOperations
    file = File.open("ordinal")
    while file.gets
        print $.
    end
end

def doGather (inputArray, startValue, &functionCall)
    for i in 0...inputArray.length
        startValue = yield startValue, inputArray[i]
    end
    puts startValue
    return startValue
end

end
include Search
abc = SearchMonkey.new(".", ["abc", "def", "ghfjsdkfi", "kfjsdkflm"])
abc.howLong = 5
abc.howDeep = 3
abc.doWork
puts abc.to_s
puts abc.howLong
puts abc.howDeep
puts SearchMonkey.instanceCount
abc.freeze
addOrMultiply("t")
addOrMultiply("p")
outArray = Array.new
puts outArray.join(", ");
doEach([1,2,3,4,5]) {|inp| puts inp}
outArray = doCollect([1,2,3]) { |inp| 3*inp}
puts outArray.join(", ");
puts Dir.pwd
system "/home/msh/devel/ruby/try.sh"
puts ARGV.join(", ")
doGather([1,2,3,4,5], 100) {|inp, out| inp * out}

