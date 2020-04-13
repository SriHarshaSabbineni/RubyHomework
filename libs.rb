lib = {}
lib["a"] = ["1", "2"]
lib["b"] = ["3", "4"]
puts lib.keys
puts "these are authors"
lib.each do |x, y|
  puts "#{x.capitalize} wrote #{y.join(", ")}"
end
