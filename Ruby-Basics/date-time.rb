#------------------------------------------------------------------------------------------------------------------------
p "\n\nDATE & TIME\n"

require 'date'          #IMPORTS DATE 

datee = Date.parse('16 Nov 2024')

p datee          # gives output in YYYY/MM/DD
p datee.year     # gives year
p datee.mon      # gives month as output
p datee.mday     # mday means month's day i.e., 10th
p datee.wday     # wday means week's day i.e., 6th
p datee.yday     # wday means year's day i.e., 6th


#------------------------------------------------------------------------------------------------------------------------
p
neewdate = datee + 5        # adds 5 days ahead

=begin
%A	Full weekday name
%d	Day of the month 
%B	Full month name
%Y	Year with century (4 digits)

=end

p neewdate.strftime('%a %d %b %y')       # output is Thursday 21 November 2024 because of "lower case" used for notation
p neewdate.strftime('%A %d %B %Y')       # output is Thursday 15 December 2011 because of "upper case" used for notation

neewdate = neewdate - 15        # goes 15 days behind
p neewdate.strftime('%A %d %B %Y')

#------------------------------------------------------------------------------------------------------------------------
p "\n\n TIME \n"

time_var = Time.new(2024,11,16,6,5,10, '+10:12:22')
p time_var
p time_var.hour
p time_var.min
p time_var.sec

p Time.now

p "#-----------------------------------------------------------------------------------------------------------------------"
#------------------------------------------------------------------------------------------------------------------------
# Create Date and Time objects


date = Date.today
time = Time.now

p "----------- Date Directives -----------"

p "Year with century (4 digits): #{date.strftime('%Y')}"
p "Year without century (2 digits): #{date.strftime('%y')}"
p "Month (2 digits, zero-padded): #{date.strftime('%m')}"
p "Full month name: #{date.strftime('%B')}"
p "Abbreviated month name: #{date.strftime('%b')}"
p "Day of the month (2 digits): #{date.strftime('%d')}"
p "Day of the month (space-padded): #{date.strftime('%e')}"
p "Day of the year (3 digits): #{date.strftime('%j')}"
p "Week number of the year (Sunday start): #{date.strftime('%U')}"
p "Week number of the year (Monday start): #{date.strftime('%W')}"
p "Full weekday name: #{date.strftime('%A')}"
p "Abbreviated weekday name: #{date.strftime('%a')}"
p "Day of the week (0=Sunday, 6=Saturday): #{date.strftime('%w')}"


#------------------------------------------------------------------------------------------------------------------------
p "\n----------- Time Directives -----------"


p "Hour (24-hour clock, 2 digits): #{time.strftime('%H')}"
p "Hour (24-hour clock, space-padded): #{time.strftime('%k')}"
p "Hour (12-hour clock, 2 digits): #{time.strftime('%I')}"
p "Hour (12-hour clock, space-padded): #{time.strftime('%l')}"
p "Minute (2 digits): #{time.strftime('%M')}"
p "Second (2 digits): #{time.strftime('%S')}"
p "Meridian indicator (AM/PM): #{time.strftime('%p')}"
p "Meridian indicator (lowercase am/pm): #{time.strftime('%P')}"
p "Milliseconds: #{time.strftime('%L')}"
p "Nanoseconds: #{time.strftime('%N')}"
p "Timezone offset (+/-HHMM): #{time.strftime('%z')}"
p "Timezone abbreviation: #{time.strftime('%Z')}"
p "Seconds since Unix epoch: #{time.strftime('%s')}"


#------------------------------------------------------------------------------------------------------------------------
p "\n----------- Combined Directives -----------"
p "Preferred date and time: #{time.strftime('%c')}"
p "Preferred date only: #{time.strftime('%x')}"
p "Preferred time only: #{time.strftime('%X')}"
p "ISO 8601 format: #{time.strftime('%F')}"
p "US date format: #{time.strftime('%D')}"


#------------------------------------------------------------------------------------------------------------------------
p "\n----------- Literal Character -----------"
p "Literal % character: #{time.strftime('%%')}"
