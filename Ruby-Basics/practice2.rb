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


#-------------------Conditions and Operators-------------------
puts "Conditions and Operators"

c= true && false
a=9
puts c
puts 3 & 3
puts "#{c}+9,...#{(5>2 && 9<11)}"



#IF ELSE STATEMENT

grade=88
if grade >=90
    puts "A+"
elsif grade>=80 && grade<90
    puts "A"
else
    puts "B"
end


#WHILE LOOP

i=0
while i <= 10
    puts i
    print "#{i}" 
    i+=1
end


#FOR LOOP

puts (1 .. 10).to_a 
# two dots means include the last value
#to_a means it will convert the range to array

puts (11 ... 20).to_a 
# three dots means exclude the last value

for i in (1 .. 6).to_a
    puts i
end
for i in (1 ... 6).to_a
    puts i
end


# CASE STATEMNT

grade = 101

case grade
when 90..100
    puts "A+"
when 80...90
    puts "A"
when 70...80
    puts "B"
else
    puts "improve"
end


#-----------FUNCTIONS------------- 



def si(p,r,t)
  puts(p*r*t/100)
  puts ("(#{p}*#{r}*#{t})/100")
end


# v=u+at
def first_eq_motion ()
  puts "Enter inital speed, acceleration and time taken"
  u = gets.chomp.to_f
  a = gets.chomp.to_f
  t = gets.chomp.to_f

  v = u+ a*t
  return v 
end


# s = ut + 1/2 at^2
def second_eq_motion ()
  puts "Enter inital speed, acceleration and distance"
  u = gets.chomp.to_f
  t = gets.chomp.to_f
  s = gets.chomp.to_f
  
  s = u*t + 0.5*a*t*t
  return s 
end


# v^2 = u^2 + 2as
def third_eq_motion ()
  puts "Enter inital speed, acceleration and distance"
  u = gets.chomp.to_f
  a = gets.chomp.to_f
  s = gets.chomp.to_f
  
  v = Math.sqrt(u*u + 2*a*s)
  return v 
end


puts "#{first_eq_motion()}"
puts "#{second_eq_motion()}"
puts "#{third_eq_motion()}"
print self