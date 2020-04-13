todos = [
  ["a", "a"],
  ["1", "b"],
  ["2", "a"],
  ["c", "b"],
]
puts "money:"
todos.each { |x| puts x[0] if x[1] == "a" }
