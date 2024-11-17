#------------------------------------------------------------------------------------------------------------------------
puts "\n-----------------------nSTRINGS-----------------------"


a = "hello ruby"
p a

b=String.new("hello again ruby")
p b

p a==b  #compares length and returns value

p a.length
p b.size

c=[1,2,3,4,5]
p c.include?(2)
p c.include?(22)

p a.include?("f")
p b.include?("agi"), b.include?("y")

p b[b.length-2], b[-1], a[-1]
print a[-1],a[-2],a[-3]


p a.upcase
d = String.new("Ok, I learn't something something today")
p d.downcase

p a.upcase
p a
p b.upcase!  #exclamation mark is inbuilt operation which convverts and stores in it
p b

d = d.upcase
p d


#------------------------------------------------------------------------------------------------------------------------
# String Methods Demonstration


str = "Hello, Ruby World!"

p "Original String: #{str}"


#------------------------------------------------------------------------------------------------------------------------
# 1. **Inspection and Querying**


p "\n-------------Inspection and Querying-------------"

p "Empty? #{str.empty?}"
p "Length: #{str.length}"

p "#{str.include?('Ruby')}"

p "Start with 'Hello'? #{str.start_with?('Hello')}"
p "End with 'World!'? #{str.end_with?('World!')}"

p " #{str.start_with?('abcc')}"
p " #{str.start_with?('abcc')}"

p "Index of 'Ruby': #{str.index('Ruby')}"
p "#{str.index('abcc')}"                        # no output if not exists

p "Bytesize of string: #{str.bytesize}"


#------------------------------------------------------------------------------------------------------------------------
# 2. **Case Conversion**


p "\n-------------Case Conversion-------------"
p " #{str.upcase}"
p " #{str.downcase}"
p " #{str.capitalize}"
p " #{str.swapcase}"


#------------------------------------------------------------------------------------------------------------------------
# 3. **Substring Access**


p "\n-------------Substring Access-------------"
p "Character at index 7: #{str[7]}"
p "Substring from index 7 to 10: #{str[7..10]}"         # to get items from range

p "First character: #{str.chr}"
p "First character: #{str[0]}"
p "first character: #{str[str.size[-1]]}"


p "Last character: #{str[-1]}"
p "last character: #{str[str.size-1]}"