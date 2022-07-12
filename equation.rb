message = {
  enter_a: 'For ах^2 + bx + c = 0 enter a: ',
  enter_b: 'Enter b: ',
  enter_c: 'Enter c: ',
  error_dis: 'D < 0, no x1, x2'

}

puts message[:enter_a]
a = gets.chomp.to_i
puts message[:enter_b]
b = gets.chomp.to_i
puts message[:enter_c]
c = gets.chomp.to_i

dis = b**2 - 4*a*c
if dis < 0
  puts message[:error_dis]
elsif dis = 0
  puts "D = 0, x1 = x2 = #{ -b / (2 * a)}"
else
  puts "D > 0, x1 = #{(-b + Math.sqrt(dis)) / (2 * a) }, x2 = #{(-b - Math.sqrt(dis)) / (2 * a)}"
end
