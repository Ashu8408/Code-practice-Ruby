#----console outputs----

puts "hello, console check"
puts "line changed when puts is used? (yes)"
print "check for print"
print "line changed? (no)"

#----variables-----

a = 8
b = 6
c = a+b

puts        #   adds a new line
puts a+b
puts a-b, a/b, a+b*c    #   bodmas followed
puts d = a%b

aa = 9.11
bb = 6.0
puts
puts aa/bb, aa%bb
puts "_____"
puts a-9
puts "-----"

puts("the sum of a + b = c")
puts("the sum of #{a} + #{b} = #{c}")
puts("the sum of a (#{a}) + b (#{b}) = c (#{c})")

#----Functions------
puts

def add(a,b)

    puts "function called here"
    c = a+b
    return c
end

puts add(9,4)
puts "#{add(234,24)} --- adding with text in puts"
