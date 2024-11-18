#------------------------------------------------------------------------------------------------------------------------
print "\n\n HASH MAPS \n\n"

grades = Hash.new

grades[10]= "A+"
grades[9]= "A"
grades[8]= "B"

p grades, grades[9]
p grades[5]  #grades[5] is not defined so no output obtained

grades.default = "Improve"  #Now all other undefined values are set to ==> "Improve"
p grades[2], grades[4]

aa = Hash.new
bb = Hash.new
aa[0] = 'A'
bb[0] = 'A'

p aa
p bb
p aa==bb

aa[1] = 'B'
bb[1] = 'C'
p aa
p bb
p aa==bb

p grades.length
p grades.size

x=grades.to_a
y=grades.to_s
p "#{x}"
p "#{y}"

p grades.has_value?('A')   #Checks if the hash map has "A" as a value
p grades.has_key?(10)   #Checks if the hash map has 10 as a key


s = "Hello World"
ss = Array.new(["creating an array"])

freq = Hash.new
freq.default = 0
s.each_char do |val|
    freq[val] += 1
end
p freq
p s, s[-3]
p ss
p "#{ss[2]}"   #not working why???

#------------------------------------------------------------------------------------------------------------------------

require 'date'


#------------------------------------------------------------------------------------------------------------------------
p "----------- Array Methods -----------"

arr = [1, 2, 3, 4, 5]
p "Original array: #{arr}"
p "Append: #{arr.push(6)}"
p "Prepend: #{arr.unshift(0)}"
p "Pop: #{arr.pop}"
p "Shift: #{arr.shift}"
p "Select: #{arr.select { |x| x > 2 }}"
p "Reject: #{arr.reject { |x| x > 2 }}"
p "Map: #{arr.map { |x| x * 2 }}"
p "Include?: #{arr.include?(3)}"
p "Reverse: #{arr.reverse}"
p "Sort: #{arr.sort}"
p "Flatten: #{[[1, 2], [3, 4]].flatten}"
p "Join: #{arr.join('-')}"
p "Size: #{arr.size}"
p "Inspect: #{arr.inspect}"


#------------------------------------------------------------------------------------------------------------------------
p "\n----------- String Methods -----------"

str = "hello world"
p "Original string: #{str}"
p "Uppercase: #{str.upcase}"
p "Lowercase: #{str.downcase}"
p "Capitalize: #{str.capitalize}"
p "Reverse: #{str.reverse}"
p "Split: #{str.split(' ')}"
p "Length: #{str.length}"
p "Substitute: #{str.sub('world', 'Ruby')}"
p "Gsub: #{str.gsub('l', '*')}"
p "Include?: #{str.include?('world')}"
p "Empty?: #{str.empty?}"
p "Strip: #{'  padded  '.strip}"


#------------------------------------------------------------------------------------------------------------------------
p "\n----------- Hash Methods -----------"

hash = { a: 1, b: 2, c: 3, u: 34 }
p "Original hash: #{hash}"
p "Keys: #{hash.keys}"
p "Values: #{hash.values}"
p "Fetch: #{hash.fetch(:a)}"
# p "Fetch: #{hash.fetch(:f)}"   # key not found KeyError
p "Fetch: #{hash.fetch(:u)}"

p "--------------------------------------------"
p "Merge: #{hash.merge({ d: 4 })}"
p "Delete: #{hash.delete(:b)}"
p "Invert: #{hash.invert}"
p "Each: #{hash.each { |key, val| p "#{key}: #{val}" }}"
p "Transform keys: #{hash.transform_keys { |key| key.to_s }}"


#------------------------------------------------------------------------------------------------------------------------
p "\n----------- Numeric Methods -----------"
num = 42
p "Original number: #{num}"
p "Even?: #{num.even?}"
p "Odd?: #{num.odd?}"
p "Next: #{num.next}"

#iterarion
p "Times: #{num.times { |i| print "#{i} " }}"


#------------------------------------------------------------------------------------------------------------------------
p "\n----------- Time Methods -----------"

require 'time'
current_time = Time.now
p "ISO 8601: #{current_time.iso8601}"


#------------------------------------------------------------------------------------------------------------------------
p "\n----------- Range Methods -----------"

range = (1..10)
p "output range: #{range}"
p "#{range.include?(5)}"
p "To Array: #{range.to_a}"


#------------------------------------------------------------------------------------------------------------------------
p "\n----------- Other General Methods -----------"

p "Random Number (0-10): #{rand(0..10)}"
p (0..10).sample

p "Convert String to Symbol: #{'hello'.to_sym}"



#------------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------
p "\n----------- File Methods -----------"

filename = 'example.txt'
File.write(filename, "Hello Ruby")
p "File exists?: #{File.exist?(filename)}"
p "File read: #{File.read(filename)}"
File.delete(filename)
#------------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------------