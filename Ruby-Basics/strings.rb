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



#------------------------------------------------------------------------------------------------------------------------
# 4. **Iteration**


p "\n-------------Iteration-------------"
p "Each character:"
str.each_char { |char| print "#{char} " }       # prints all elements of array as a char
p "\nEach byte:"
str.each_byte { |byte| print "#{byte} " }        # prints all elements of array as ASCII value

count = 0
str.each_char { |char| count += 1}
p count


count1 = 0
str.each_byte { |byte| count1 += 1}
p count1

count2 = 0
str.each_byte { |byte| count2 += byte}
p count2



#------------------------------------------------------------------------------------------------------------------------
# 5. **Modification**


p "\n\n-------------Modification-------------"

mutable_str = "Mutable String"
p "Original: #{mutable_str}"

mutable_str.concat(" Modified!")
p "After concat: #{mutable_str}"


mutable_str.insert(8, " INSERTED")
mutable_str.insert(13, " INSERTED")

p "Delete vowels: #{str.delete('aeiou')}"

p "After insert: #{mutable_str}"

p "Replace content: #{mutable_str.replace('New Content')}"     # new string with these elements


#------------------------------------------------------------------------------------------------------------------------
# 6. **Whitespace Handling**


p "\n-------------Whitespace Handling-------------"

str_with_spaces = "   Trim me!   "
p "Before strip: --#{str_with_spaces}--"
p "After strip: --#{str_with_spaces.strip}--"
p "After lstrip: --#{str_with_spaces.lstrip}--"     # strips from left  
p "After rstrip: --#{str_with_spaces.rstrip}--"     # strips from right

#------------------------------------------------------------------------------------------------------------------------
# 7. **Splitting and Joining**


p "\n-------------Splitting and Joining-------------"
split_str = str.split(" ")
p "Split by spaces: #{split_str}"
p "Join with hyphens: #{split_str.join('-')}"


#------------------------------------------------------------------------------------------------------------------------
# 8. **Reversal and Rotation**

p "\n-------------Reverse-------------"
p "Reversed: #{str.reverse}"

#------------------------------------------------------------------------------------------------------------------------
# 9. **Substitution**


p "\n-------------Substitution-------------"
p "#{str.sub('Ruby', 'Python')}"        # Substitutes 'Ruby' with 'Python'
p " #{str.gsub(/[aeiou]/, '*')}"        # Substitutes all vowels with '*'


#------------------------------------------------------------------------------------------------------------------------
# 10. **Character Count**


p "\n-------------Character Count-------------"
p "#{str.count('o')}"
p "#{str.count('aeiou')}"
p "#{str.count('abced')}"


#------------------------------------------------------------------------------------------------------------------------
# 11. **Comparison**


p "\n-------------Comparison-------------"
p " #{str == 'Hello, Ruby World!'}"
p "#{str.casecmp?('hello, ruby world!')}"


#------------------------------------------------------------------------------------------------------------------------
# 12. **Encoding**


p "\n-------------Encoding-------------"
p "#{str.encoding}"
p "Force UTF-8 encoding: #{str.force_encoding('UTF-8')}"


#------------------------------------------------------------------------------------------------------------------------
# 13. **Regular Expressions**


p "\n-------------Regular Expressions-------------"
p "Match 'Ruby'? #{str.match?(/Ruby/)}"

# str.scan(pattern) finds all substrings in str that match the regular expression pattern and returns them as an array.
p "Scan for words: #{str.scan(/\w+/)}"      # w+ = finds words
p "Words: #{str.scan(/[a-zA-Z]+/)}"


#------------------------------------------------------------------------------------------------------------------------
# 14. **Other Utilities**


p "\n-------------Other Utilities-------------"
p "Center string: '#{str.center(30, '-')}'"         # adds '-' to the string to make it a string of size 30 woth it's content in the middle
p str.center(40)
p "Left justify: '#{str.ljust(30, '-')}'"           # adds '-' to the string to make it a string of size 30 woth it's content at the left
p str.ljust(40)
p "Right justify: '#{str.rjust(30, '-')}'"          # adds '-' to the string to make it a string of size 30 woth it's content at the right
p str.rjust(40)
p "Inspect string: #{str.inspect}"


#------------------------------------------------------------------------------------------------------------------------
# 15. **Converting Between Representations**


p "\n-------------Conversions-------------"

p "#{'123'.to_i}"
p "#{'123.45'.to_f}"
p "To symbol: #{str.to_sym.inspect}"
p "To array of bytes: #{str.bytes}"
p "To array of characters: #{str.chars}"

#------------------------------------------------------------------------------------------------------------------------
