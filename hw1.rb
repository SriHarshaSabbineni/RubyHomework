a=20
b="my age is #{a}"
c='my age is #{a}'
puts b
puts c


a={"raj"=>"CSE", "ram"=> "ECE"}
puts a["raj"]


puts "enter two numbers"
a=gets.chomp
b=gets.strip
puts "you entered #{a} and #{b}"


puts "enter the number which nwwds to be converted to integer"
a=gets.chomp.to_i
puts "this is the resultant number: #{a}"


puts "enter two numbers"
a=gets.chomp
b=gets.strip
if a>b
 puts "#{a} is bigger"
else
 puts "#{b} is bigger"
end


for i in 1..10
 puts i
end


for i in 1...10
 puts i
end

a=[12,34,56,78,90]
for i in a
 puts i
end


