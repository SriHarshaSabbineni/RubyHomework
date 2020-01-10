puts (" What you want to do?\n1. addition \n2.Subtraction\n 3. Multiplication\n 4.division")
c= gets.chomp.to_i
puts ("enter the first number")
a= gets.chomp.to_f
puts ("enter the second number")
b= gets.chomp.to_f
case c
 when 1
  puts "ans:",a+b
 when 2
  puts " ans:",a-b
 when 3
  puts " ans:",a*b
 when 4
  puts " ans:",a/b
 else
  puts " enter a correct value"
end
