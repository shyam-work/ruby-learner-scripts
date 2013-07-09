#!/usr/local/bin/ruby

#array functions

a = Array.new
a = [1,2,3,4,5]
b = [1,2,3,4,5]
c = a & b
d = a * 3
d = a * ", "
e = a + b
f = [2,3]
d = a-f;
a << 2;
a[3] # 3rd element
a[3,2]
a[3..5]
a.at(2)
a.clear
a.collect { |elem| elem+1}
a.map { |elem| elem+1}
a.collect! { |elem| elem+1}
a.map! { |elem| elem+1}
a = [1,nil,2,3,nil,4,5,6,nil]
a.compact
a.compact!
c=[3,4,5]
a.concat(c)
puts a
a.count
a.count("abc")
a.count {|elem| elem % 2 == 0}
a.delete("2")
a.delete ("3") {23}
a.delete_at(3)
a.delete_if {|elem| elem % 2 == 0}
a.drop(3)
a.drop_while {|elem| elem < 10}
arr = Array.new
arr.each{|abc| puts abc}
arr.each_index{|index| puts arr[index]}
arr.empty?
other = arr
arr.eql?(other)
arr.flatten()
arr.flatten!()
arr.include?(obj)
arr.replace(other_array)
arr.insert(index, obj)
arr.to_s()
arr.inspect()
arr.join()
arr.join(", ")
arr.last()
arr.length
arr.pop()
arr.product(other_array)
arr.reject {|a| a > 5}
arr.reject! {|a| a > 5}
arr.reverse()
arr.reverse!()
arr.rotate()
arr.sample()
arr.shuffle()
arr.size()
arr.slice(index)
arr.slice(start,len)
arr.slice(range)
arr.slice!(index)
arr.slice!(start,len)
arr.slice!(range)
arr.sort()
arr.sort {|a,b|block}
arr.take(3) # return the first 3 elements in a new array
arr.uniq()
arr.uniq!()
arr.first();
arr.last();
arr.shift;
arr.unshift;
