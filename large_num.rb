nums = [1, 2, 3]
large_num = nums.find { |i| i > 10 }
if large_num == nil
  puts "no large nums"
else
  puts large_num
end
