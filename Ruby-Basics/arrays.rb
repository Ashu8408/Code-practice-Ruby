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

# at and fetch both are used to get elements, at reverts 'nil' whereas feetch reverts 'index error' at invalid indices

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
# 5. Transformations


puts "\n------------- Transformations -------------"
p array2.reverse      
p array2.rotate(2)    # rotates array from index
p array2.rotate(5)

p array2.sort
p array2.sort.reverse   # creates a new array

p array2.shuffle      # random shuffle


#------------------------------------------------------------------------------------------------------------------------
# 6. Set Operations


puts "\n------------- Set Operations -------------"

p [1, 2, 3] & [2, 3, 4] # Intersection = [&]
p [1, 2, 3] | [2, 3, 4] # Union - [|]
p [1, 2, 3] - [2]       # Difference - [-]

p ["a", "b", "c", "d"] & ["c", "d", "e", "f"]
p ["a", "b", "c", "d"] | ["c", "d", "e", "f"]
p ["a", "b", "c", "d"] - ["c", "d", "e", "f"]


#------------------------------------------------------------------------------------------------------------------------
# 7. Combining Arrays


puts "\n------------- Combining Arrays -------------"
p array2 + [8, 9]             # it creates a new array and adds the elements at last
p array2.concat([10, 11])     # it modifies the same array to add the elements

p array2.zip([1, 2, 3])
# The zip method in Ruby combines elements from two or more arrays into a single 
# array of subarrays, where each subarray contains corresponding elements from the input arrays.

p [1, 2].product([3, 4])      # cross product of elemets in an array


#------------------------------------------------------------------------------------------------------------------------
# 8. Splitting and Partitioning


puts "\n------------- Splitting and Partitioning -------------"
p array2.partition { |e| e.even? }      # creates two partition, one of even and other of non-even elements


#------------------------------------------------------------------------------------------------------------------------
# 9. Conversion


puts "\n------------- Conversion -------------"
p array2.join(", ")             # join method converts the elements of an array into a single string with the given input as seperator
p array2.to_h { |e| [e, e**2] } # Nested arrays only




