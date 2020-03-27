def array_copy(source)
  dest = []
  dest = source.select { |i| i < 4 }
  return dest
end

puts(array_copy([1, 2, 4, 5, 6, 7]))
