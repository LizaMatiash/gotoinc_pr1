# frozen_string_literal: true

message = {
  name: 'Your name: ',
  height: 'Your height: ',
  error1: 'Wrong input. Try again: ',
  result2: 'Your weight is optimal'
}

puts message[:name]
name = gets.chomp
puts message[:height]

height = nil
loop do
  height = gets.chomp
  break if height.to_i.positive?

  puts message[:error1]
end

puts (height.to_i - 110).positive ? "#{name}, your perfect weight is #{height.to_i - 110}" : message[:result2]
