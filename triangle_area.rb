message = {base: 'Enter base of triangle: ',
  height: 'Enter height of triangle: ',
  error_input: 'Wrong input. Try again: '
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

puts message[:base]
base = inputCheck(message)
puts message[:height]
height = inputCheck(message)

puts "Triangle area is #{0.5 * base * height}"
