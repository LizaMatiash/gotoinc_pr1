# frozen_string_literal: true

message = {
  base: 'Enter base of triangle: ',
  height: 'Enter height of triangle: ',
  error_input: 'Wrong input. Try again: '
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

puts message[:base]
base = input_check(message)
puts message[:height]
height = input_check(message)

puts "Triangle area is #{0.5 * base * height}"
