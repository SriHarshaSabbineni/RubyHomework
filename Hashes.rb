normal = Hash.new
was_not_there = normal[:zig]
puts "wasn't there"
p was_not_there

usually_brown = Hash.new("brown")
pretending_to_be_there = usually_brown[:zig]
puts "pretending to be there:"
p pretending_to_be_there
