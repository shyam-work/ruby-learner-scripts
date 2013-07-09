#!/usr/local/bin/ruby
module ABC

def proc_caller (f)
    f.call
end

def main
    abc = Proc.new {
        print "This is a proc\n";
    }

    abcd = Proc.new { |a| 
        a * a;
    }

    new_array = [1,2,3,4,5];
    sq_array = map(new_array, &abcd);
    puts (sq_array.inspect)  ;
    another_array = ABC.map(sq_array,&abcd) ;
    puts (another_array.inspect)  ;
    proc_caller(abc);
end

def map(array, &func)
    new_array = [3,4,5,6]
    i = 0
    while i < array.length
        new_array[i] = yield array[i];
        i = i+1
    end
    return new_array
end

end

include ABC

ABC.main()
