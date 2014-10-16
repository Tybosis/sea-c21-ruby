# 5 points
#
# Write a program that displays all the leap years between 1900 and 2000.
#
# Leap years are years divisible by 4 (e.g. 1984).
#
# Years divisible by 100 are not leap years (e.g. 1900) unless they are also
# divisible by 400 (e.g. 2000).
#
# Tip: I expect you to use a loop and a few modulo operations.

leap_years = []

(1900..2000).each { |year| leap_years << year if year % 4 == 0 }

leap_years.each { |year| puts year unless year % 100 == 0 && year % 400 != 0 }

# (1900..2000).each { |year| puts year  if year % 4 == 0 && \
# (year % 100 != 0 || year % 400 == 0) }
