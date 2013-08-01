#!/usr/bin/ruby
#
def callbacks(procs)
    procs['starting'].call
    puts "Still going"
    procs['finishing'].call
end

#Method 1. Create a hash on the fly.
callbacks(
            # Pass a hash
            { 'starting' => Proc.new { puts "Starting" }, 
              'finishing' => Proc.new { puts "Finishing" } }
        );

#Method 2. Create a hash and pass it
myFunctions = Hash.new;
myFunctions['starting'] = Proc.new {  puts "Starting" };
myFunctions['finishing'] = Proc.new {  puts "Finishing" };

callbacks (myFunctions);
