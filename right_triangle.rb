message = {first: 'Enter 1 side of triangle: ',
  second: 'Enter 2 side of triangle: ',
  third: 'Enter 3 side of triangle: ',
  error_input: 'Wrong input. Try again: ',
  error_triangle_not_exist: 'Such triangle do not exist (a > b+c). Try again',
  equilateral: 'Equilateral triangle',
  isosceles: 'Isosceles triangle',
  right: 'Triangle is right',
  not_right: 'Triangle is not right'
}

def inputCheck(message)
  a = nil
  loop {
    a = gets.chomp.to_i
    break if a > 0
    puts message[:error_input]
  }
  return a
end

side_1 = nil
side_2 = nil
side_3 = nil

loop {
  puts message[:first]
  side_1 = inputCheck(message)
  puts message[:second]
  side_2 = inputCheck(message)
  puts message[:third]
  side_3 = inputCheck(message)

  break if side_1 < side_2 + side_3 && side_2 < side_1 + side_3 && side_3 < side_2 + side_1
  puts message[:error_triangle_not_exist]
 }


if side_1 == side_2 && side_1 == side_3 #рівносторонній
  puts message[:equilateral]
elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3 #рівнобедренний
  puts message[:isosceles]
end

# a^2 = b^2 + c^2
if side_1 ** 2 == side_2 ** 2 + side_3 ** 2 || side_2 ** 2 == side_1 ** 2 + side_3 ** 2 || side_3 ** 2 == side_2 ** 2 + side_1 ** 2
  puts message[:right]
else
  puts message[:not_right]
end
