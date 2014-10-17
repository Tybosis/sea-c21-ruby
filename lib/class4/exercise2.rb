#!/usr/bin/env ruby
#
# 5 points
#
# Write a program that displays the following table of 90's Hip-Hop hits:
#
#   $ ruby exercise2.rb
#   Can I Kick It?      A Tribe Called Quest     1991
#   Rump Shaker         Wreckx-n-Effect          1992
#   Check Yo Self       Ice Cube                 1993
#   Regulate            Warren G & Nate Dogg     1994
#   I Got 5 On It       Luniz                    1995
#   Ready Or Not        The Fugees               1996
#
# TIP #1: Hold all of the information -- song, artist, and year -- in an array.
#
# TIP #2: Use the `string.ljust` method from class 2 exercise 7.
#
# TIP #3: The width of each line is 50 characters.

stuff =
['Can I Kick It?', 'A Tribe Called Quest', '1991', 'Rump Shaker',
 'Wreckx-n-Effect', '1992', 'Check Yo Self', 'Ice Cube', '1993', 'Regulate',
 'Warren G & Nate Dogg', '1994', 'I Got 5 On It', 'Luniz', '1995',
 'Ready Or Not', 'The Fugees', '1996']

puts stuff[0].ljust(20) + stuff[1].ljust(26) + stuff[2].ljust(4)
puts stuff[3].ljust(20) + stuff[4].ljust(26) + stuff[5].ljust(4)
puts stuff[6].ljust(20) + stuff[7].ljust(26) + stuff[8].ljust(4)
puts stuff[9].ljust(20) + stuff[10].ljust(26) + stuff[11].ljust(4)
puts stuff[12].ljust(20) + stuff[13].ljust(26) + stuff[14].ljust(4)
puts stuff[15].ljust(20) + stuff[16].ljust(26) + stuff[17].ljust(4)
