puts "Enter 1 side of triangle: "
side_1 = gets.chomp.to_f
puts "Enter 2 side of triangle: "
side_2 = gets.chomp.to_f
puts "Enter 3 side of triangle: "
side_3 = gets.chomp.to_f

if side_1 == side_2 && side_1 == side_3
  puts "Equilateral triangle"
elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
  puts "Isosceles triangle"
end

if side_1 ** 2 == side_2 ** 2 + side_3 ** 2 || side_2 ** 2 == side_1 ** 2 + side_3 ** 2 || side_3 ** 2 == side_2 ** 2 + side_1 ** 2
  puts "Triangle is right"

else puts "Triangle is not right"
end
