

a=Array.new

begin

puts "Choose what you want to do:\n1. Add Value\n2. minimum\n3. maximum\n4.sum\n5.average\n6.search\n7.display\n8. delete value by index\n9. delete value\n10.exit"

c=gets.chomp.to_i

 case c
  when 1
   print "enter the value you want to add to the array:"
   a << gets.chomp.to_i
  when 2
   puts a.min
  when 3
   puts a.max
  when 4
   puts a.sum
  when 5
   puts (a.sum)/(a.size)
  when 6
   print "enter the value that you want to search:"
   puts a.include?(gets.chomp.to_i)
  when 7
   print "enter the index:"
   puts a.at(gets.chomp.to_i)
  when 8
   print "enter the index:"
   a.delete_at(gets.chomp.to_i)
   puts a
  when 9
   print "enter the number to be deleted:"
   a.delete(gets.chomp.to_i)
   puts a
  when 10
   print "Thankyou"
 end
end until c==10
   
   
