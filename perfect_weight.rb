message = {name: 'Your name: ',
  height: 'Your height: ',
  error_1: 'Wrong input. Try again: ',
  result_2: 'Your weight is optimal'
}

puts message[:name]
name = gets.chomp
puts message[:height]

height = nil
loop {
  height = gets.chomp
  break if height.to_i > 0
  puts message[:error_1]
}

puts (height.to_i - 110) > 0 ? "#{name}, your perfect weight is #{height.to_i- 110}" : puts message[:result_2]
