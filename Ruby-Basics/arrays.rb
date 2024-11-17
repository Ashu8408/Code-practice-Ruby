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

#------------------------------------------------------------------------------------------------------------------------
#EACH_WITH_INDEX

a.each_with_index { |val, indx| puts "The value at index #{indx} is #{val}"}

#DELETE_AT

puts "#{a}"
a.delete_at(2)
puts "#{a}"
a.delete(90)
puts "#{a}"



#------------------------------------------------------------------------------------------------------------------------
# 1. Creation and Initialization


puts "------------- Creation and Initialization -------------"
array1 = Array.new(5, "hello")
#prints hello 5 times

array2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p array1
p array2

array101 = Array.new(2,"hello")
array102 = Array.new(3,"hii")

p array101+array102
p array1+array2+array101+array102


#------------------------------------------------------------------------------------------------------------------------
# 2. Accessing Elements


puts "\n------------- Accessing Elements -------------"
p array2[2]        # Access by index
p array2[0]
p array2[-1]
p array2[-10]
p array2[-11]      # prints nil because length reached


p array2.at(1)     # Another way to access by index
p array2.at(2)        # Access by index
p array2.at(0)
p array2.at(-1)
p array2.at(-10)
p array2.at(-11)


p array2.fetch(3)  # Fetch value with index, error if out of range
p array2.fetch(2)        # Access by index
p array2.fetch(0)
p array2.fetch(-1)
p array2.fetch(-10)
p array2.fetch(-11)     #out of range error


p array2.first     # First element
p array2.last      # Last element
p array2.values_at(0, 2, 4) # Multiple indexes


#------------------------------------------------------------------------------------------------------------------------
p array2.sample    # Random element


#------------------------------------------------------------------------------------------------------------------------
# 3. Modifying Elements


puts "\n------------- Modifying Elements -------------"
array2[1] = 99
p array2

array2.fill(0, 2, 4)      # fill "0" at index '2' '4' times
p array2
array2.insert(3, 42)
p array2


array2.push(66)     # adds 66 at the end of the array
array2 << 7         # adds 66 at the end of the array
p array2

array2.unshift(20)   # adds 20 at the begining of the array
p array2



#------------------------------------------------------------------------------------------------------------------------
# 4. Removing Elements


puts "\n------------- Removing Elements -------------"
p array2.pop              # Remove last element
p array2.shift            # Remove first element
p array2.delete(99)       # Remove by value
p array2.delete_at(2)     # Remove by index

p array2.compact          # Remove nil values (no nil here)

array2.push(666)
array2.push(666)
array2.push(666)
array2.uniq!              # Remove duplicates
p array2



#------------------------------------------------------------------------------------------------------------------------
# 5. Iteration and Traversal


puts "\n------------- Iteration and Traversal -------------"
array2.each { |e| print "#{e} " }

puts array2.each_with_index { |e, i| puts "Element #{e} at index #{i}" }
a.each_with_index { |val, indx| puts "The value at index #{indx} is #{val}"}


p array2.map { |e| e * 2 }     # access by value at e and do the operation
array2.map! { |e| e + 1 }
p array2



#------------------------------------------------------------------------------------------------------------------------
# 6. Searching and Filtering


puts "\n------------- Searching and Filtering -------------"
p array2.include?(3)                   # returns true or false
p array2.include?(50)

p array2.find { |e| e > 3 }            # returns just greater item
p array2.find_all { |e| e > 3 }        # returns all greater items

p array2.index(3)
p array2.index(320)                 # nil if element doesn't exist

p array2.select { |e| e > 3 }          #??
p array2.reject { |e| e > 3 }          #??



=begin  
                                    Comparison Table
Aspect	                    select	                                     reject
Behavior	        Keeps elements that return true.	    Excludes elements that return true.
Condition	        Elements satisfying the condition.	    Elements not satisfying the condition.
Returned Array	    Includes matching elements.	Excludes    matching elements.
Example Condition	            `{	                            e

=end

#------------------------------------------------------------------------------------------------------------------------
# 7. Transformations


puts "\n------------- Transformations -------------"
p array2.reverse      
p array2.rotate(2)    # rotates array from index
p array2.rotate(5)

p array2.sort
p array2.sort.reverse   # creates a new array

p array2.shuffle      # random shuffle


#------------------------------------------------------------------------------------------------------------------------
# 8. Set Operations


puts "\n------------- Set Operations -------------"

p [1, 2, 3] & [2, 3, 4] # Intersection = [&]
p [1, 2, 3] | [2, 3, 4] # Union - [|]
p [1, 2, 3] - [2]       # Difference - [-]

p ["a", "b", "c", "d"] & ["c", "d", "e", "f"]
p ["a", "b", "c", "d"] | ["c", "d", "e", "f"]
p ["a", "b", "c", "d"] - ["c", "d", "e", "f"]


#------------------------------------------------------------------------------------------------------------------------
# 9. Combining Arrays


puts "\n------------- Combining Arrays -------------"
p array2 + [8, 9]             # it creates a new array and adds the elements at last
p array2.concat([10, 11])     # it modifies the same array to add the elements

p array2.zip([1, 2, 3])
p array2.zip(["a", 2, "c"])
# The zip method in Ruby combines elements from two or more arrays into a single 
# array of subarrays, where each subarray contains corresponding elements from the input arrays.

p [1, 2].product([3, 4])      # cross product of elemets in an array


#------------------------------------------------------------------------------------------------------------------------
# 10. Splitting and Partitioning


puts "\n------------- Splitting and Partitioning -------------"
p array2.partition { |e| e.even? }      # creates two partition, one of even and other of non-even elements


#------------------------------------------------------------------------------------------------------------------------
# 11. Conversion


puts "\n------------- Conversion -------------"
p array2.join(", ")             # join method converts the elements of an array into a single string with the given input as seperator


#------------------------------------------------------------------------------------------------------------------------
# 12. Other Methods


puts "\n------------- Other Useful Methods -------------"
p array2.empty?
p array2.length
p array2.size


#------------------------------------------------------------------------------------------------------------------------
# Aliases (Map = Collect)


puts "\n------------- Collect -------------"
#   It iterates over each element in the collection,
# applies the block of code provided, and returns a new array containing the results of the block's execution.

p array2.collect { |e| e * 2 }

words = ["hello", "world", "ruby"]
p words.collect { |word| word.upcase }

numbers = (1..5).collect { |n| n ** 2 }
