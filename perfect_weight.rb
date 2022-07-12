puts "Your name: "
name = gets.chomp
puts "Your height: "
height = gets.chomp
puts (height.to_i - 110) > 0 ? "#{name}, your perfect weight is #{height.to_i - 110}" : "Your weight is optimal"
