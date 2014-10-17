#   1000 = M
#    500 = D
#    100 = C
#     50 = L
#     10 = X
#      5 = V
#      1 = I




# def old_school_roman_numeral(num)
#   string = ''
#   loop do
#     if num / 1000 == 1
#       string += 'M'
#       return string
#     elsif num >= 500
#       string += 'D'
#       num -= 500
#     elsif num >= 100
#       string += 'C'
#       num -= 100
#     elsif num >= 50
#       string += 'L'
#       num -= 50
#     elsif num >= 10
#       string += 'X'
#       num -= 10
#     elsif num >= 5
#       string += 'V'
#       num -= 5
#     else
#       string += 'I' * num
#       return string
#     end
#   end
# end



#   string = ''
#   roman = {
#     1000 => "M",
#     500 => "D",
#     100 => "C",
#     50 => "L",
#     10 => "X",
#     5 => "V",
#     1 => "I",
#    }

#   roman.each do |number, letter|
#     while num >= number
#       string += letter
#       num -= number
#     end
#   end
#   return string
# end



#   ints = [1, 5, 10, 50, 100, 500, 1000]
#   numerals = %w(I V X L C D M)
#   answer = ''

#   while num > 0
#     if num / ints.last >= 1
#       times = num / ints.last
#       answer += numerals.pop * times
#       num = num % ints.pop
#     else
#       numerals.pop
#       ints.pop
#     end
#   end
#   answer
# end



#   ints = [1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000]
#   numerals = %w(I IV V IX X XL L XC C CD D CM M)
#   answer = ''

#   while num > 0
#     if num / ints.last >= 1
#       times = num / ints.last
#       answer += numerals.pop * times
#       num = num % ints.pop
#     else
#       numerals.pop
#       ints.pop
#     end
#   end
#   answer
# end

def old_school_roman_numeral(num)
  string = ''
  roman = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  roman.each do |number, letter|
    while num >= number
      string += letter
      num -= number
    end
  end
  return string
end


puts 'enter and interger between 1 and 1000 please:'
ans = gets.chomp.to_i
puts old_school_roman_numeral(ans)
