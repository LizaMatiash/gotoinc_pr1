puts "For ах^2 + bx + c = 0 enter a: "
a = gets.chomp.to_i
puts "Enter b: "
b = gets.chomp.to_i
puts "Enter c: "
c = gets.chomp.to_i

dis = b**2 - 4*a*c
if dis < 0
  puts "D < 0, no x1, x2"
elsif dis = 0
  puts "D = 0, x1 = x2 = #{ -b / (2 * a)}"
else
  puts "D > 0, x1 = #{(-b + Math.sqrt(dis)) / (2 * a) }, x2 = #{(-b - Math.sqrt(dis)) / (2 * a)}"
end
