# 5 points
#
# Write a program that displays the following table of contents:
#
#   $ ruby exercise7.rb
#                   Table of Contents
#   Chapter 1:  Getting Started                page  1
#   Chapter 2:  Numbers                        page  9
#   Chapter 3:  Letters                        page 13
#
# Tip #1: The width of each line is 50 characters.
#
# Tip #2: You'll need the following methods:
#
#   string.center(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` centered.
#
#     'bird'.center(10)  #=> '   bird   '
#
#   string.ljust(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` left justified.
#
#     'bird'.ljust(10)  #=> 'bird      '
#
#   string.rjust(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` right justified.
#
#     'bird'.rjust(10)  #=> '      bird'

line_width = 25
line_width2 = 50
title = 'Table of Contents'
ch1 = 'Chapter 1:  Getting Started'
ch2 = 'Chapter 2:  Numbers'
ch3 = 'Chapter 3:  Letters'

p1 = 'page  1'
p2 = 'page  9'
p3 = 'page 13'

puts title.center(line_width2)
puts ch1.ljust(line_width) + p1.rjust(line_width - 2)
puts ch2.ljust(line_width) + p2.rjust(line_width)
puts ch3.ljust(line_width) + p3.rjust(line_width)
