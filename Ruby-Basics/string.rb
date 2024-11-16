puts "\n\nSTRINGS\n\n"
a = "hello ruby"
puts a

b=String.new("hello again ruby")
puts b

puts a==b  #compares length and returns value

puts a.length
puts b.size

c=[1,2,3,4,5]
puts c.include?(2)
puts c.include?(22)

puts a.include?("f")
puts b.include?("agi"), b.include?("y")

puts b[b.length-2], b[-1], a[-1]
print a[-1],a[-2],a[-3]


puts a.upcase
d = String.new("Ok, I learn't something something today")
puts d.downcase

puts a.upcase
puts a
puts b.upcase!  #exclamation mark is inbuilt operation which convverts and stores in it
puts b

d = d.upcase
puts d


#------------------------------------------------------------------------------------------------------------------------

# String Methods Demonstration
str = "Hello, Ruby World!"

puts "Original String: #{str}"

# 1. **Inspection and Querying**
puts "\n--- Inspection and Querying ---"
puts "Empty? #{str.empty?}"
puts "Length: #{str.length}"
puts "Include 'Ruby'? #{str.include?('Ruby')}"
puts "Start with 'Hello'? #{str.start_with?('Hello')}"
puts "End with 'World!'? #{str.end_with?('World!')}"
puts "Index of 'Ruby': #{str.index('Ruby')}"
puts "Bytesize: #{str.bytesize}"

# 2. **Case Conversion**
puts "\n--- Case Conversion ---"
puts "Uppercase: #{str.upcase}"
puts "Lowercase: #{str.downcase}"
puts "Capitalize: #{str.capitalize}"
puts "Swapcase: #{str.swapcase}"

# 3. **Substring Access**
puts "\n--- Substring Access ---"
puts "Character at index 7: #{str[7]}"
puts "Substring from index 7 to 10: #{str[7..10]}"
puts "First character: #{str.chr}"
puts "Last character: #{str[-1]}"

# 4. **Iteration**
puts "\n--- Iteration ---"
puts "Each character:"
str.each_char { |char| print "#{char} " }
puts "\nEach byte:"
str.each_byte { |byte| print "#{byte} " }

# 5. **Modification**
puts "\n\n--- Modification ---"
mutable_str = "Mutable String"
puts "Original: #{mutable_str}"
mutable_str.concat(" Modified!")
puts "After concat: #{mutable_str}"
mutable_str.insert(8, " INSERTED")
puts "After insert: #{mutable_str}"
puts "Replace content: #{mutable_str.replace('New Content')}"
puts "Delete vowels: #{str.delete('aeiou')}"

# 6. **Whitespace Handling**
puts "\n--- Whitespace Handling ---"
str_with_spaces = "   Trim me!   "
puts "Before strip: '#{str_with_spaces}'"
puts "After strip: '#{str_with_spaces.strip}'"
puts "After lstrip: '#{str_with_spaces.lstrip}'"
puts "After rstrip: '#{str_with_spaces.rstrip}'"

# 7. **Splitting and Joining**
puts "\n--- Splitting and Joining ---"
split_str = str.split(" ")
puts "Split by spaces: #{split_str}"
puts "Join with hyphens: #{split_str.join('-')}"

# 8. **Reversal and Rotation**
puts "\n--- Reversal and Rotation ---"
puts "Reversed: #{str.reverse}"

# 9. **Substitution**
puts "\n--- Substitution ---"
puts "Substitute 'Ruby' with 'Python': #{str.sub('Ruby', 'Python')}"
puts "Substitute all vowels with '*': #{str.gsub(/[aeiou]/, '*')}"

# 10. **Character Count**
puts "\n--- Character Count ---"
puts "Count 'o': #{str.count('o')}"
puts "Count vowels: #{str.count('aeiou')}"

# 11. **Comparison**
puts "\n--- Comparison ---"
puts "Equal to 'Hello, Ruby World!': #{str == 'Hello, Ruby World!'}"
puts "Case-insensitive comparison with 'hello, ruby world!': #{str.casecmp?('hello, ruby world!')}"

# 12. **Encoding**
puts "\n--- Encoding ---"
puts "Encoding: #{str.encoding}"
puts "Force UTF-8 encoding: #{str.force_encoding('UTF-8')}"

# 13. **Regular Expressions**
puts "\n--- Regular Expressions ---"
puts "Match 'Ruby'? #{str.match?(/Ruby/)}"
puts "Scan for words: #{str.scan(/\w+/)}"

# 14. **Other Utilities**
puts "\n--- Other Utilities ---"
puts "Center string: '#{str.center(30, '-')}'"
puts "Left justify: '#{str.ljust(30, '-')}'"
puts "Right justify: '#{str.rjust(30, '-')}'"
puts "Inspect string: #{str.inspect}"

# 15. **Converting Between Representations**
puts "\n--- Conversions ---"
puts "To integer (if numeric): #{'123'.to_i}"
puts "To float (if numeric): #{'123.45'.to_f}"
puts "To symbol: #{str.to_sym.inspect}"
puts "To array of bytes: #{str.bytes}"
puts "To array of characters: #{str.chars}"

puts "\nEnd of String Methods Demonstration!"

