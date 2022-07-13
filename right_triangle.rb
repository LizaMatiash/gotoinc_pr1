# frozen_string_literal: true

message = {
  first: 'Enter 1 side of triangle: ',
  second: 'Enter 2 side of triangle: ',
  third: 'Enter 3 side of triangle: ',
  error_input: 'Wrong input. Try again: ',
  error_triangle_not_exist: 'Such triangle do not exist (a > b+c). Try again',
  equilateral: 'Equilateral triangle',
  isosceles: 'Isosceles triangle',
  right: 'Triangle is right',
  not_right: 'Triangle is not right'
}

def input_check(message)
  a = nil
  loop do
    a = gets.chomp.to_i
    break if a.positive?

    puts message[:error_input]
  end
  a
end

side1 = nil
side2 = nil
side3 = nil

loop do
  puts message[:first]
  side1 = input_check(message)
  puts message[:second]
  side2 = input_check(message)
  puts message[:third]
  side3 = input_check(message)

  break if side1 < side2 + side3 && side2 < side1 + side3 && side3 < side2 + side1

  puts message[:error_triangle_not_exist]
end

if side1 == side2 && side1 == side3 # рівносторонній
  puts message[:equilateral]
elsif side1 == side2 || side1 == side3 || side2 == side3 # рівнобедренний
  puts message[:isosceles]
end

# a^2 = b^2 + c^2
if side1**2 == side2**2 + side3**2 || side2**2 == side1**2 + side3**2 || side3**2 == side2**2 + side1**2
  puts message[:right]
else
  puts message[:not_right]
end
