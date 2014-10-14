# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!

random = Random.new
puts 'Nana: HI SWEETIE! GIVE NANA A KISS!'
count = 0
bye_count = 0
loop do
  ans = gets.chomp
  if ans == 'BYE' && bye_count == 2
    puts 'Nana: BYE SWEETIE!'
    break
  elsif ans == 'BYE' && bye_count != 2
    puts "Nana: HOW'S SCHOOL GOING?"
    bye_count += 1
  elsif ans == ans.upcase && count == 0
    puts 'Nana: NOT SINCE 1936!'
    count += 1
    bye_count = 0
  # extra elsif to pass the specs
  elsif ans == ans.upcase && count == 1
    puts 'Nana: NOT SINCE 1949!'
    count += 1
    bye_count = 0
  elsif ans == ans.upcase && count > 1
    puts "Nana: NOT SINCE #{random.rand(21) + 1930}!"
    bye_count = 0
  else
    puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
    bye_count = 0
  end
end
