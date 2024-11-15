#------------------------------------------------------------------------------------------------------------------------
puts "ARRAYS\n\n"

nums=[1,2,3]
names = ["ashu", "jaiswal", "joe", "biden"]

puts names
puts "#{nums}"
print names

arr2 = Array.new([4,5,6])
puts arr2
puts "#{names}"

temp = Array.new(5, "hello")
puts temp
puts "#{temp}"

tmp = Array.new(10, 55)
puts "#{tmp}"

teemp = Array(20 .. 30)
puts "#{teemp}"

a = Array.new([10,12,14,15,90])
puts a.length
puts a.size
puts a.first, a.last, a.min, a.max, a[a.length/2]

puts a.to_s #to convert into string

a.push(60)
a.push(234)
puts "#{a}"
a.pop
puts "#{a}"
