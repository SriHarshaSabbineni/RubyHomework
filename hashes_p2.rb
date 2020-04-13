t = [
  ["dfgh", "a"],
  ["sdfghj", "b"],
  ["WER", "c"],
  ["cvbn", "a"],
  ["bnm", "b"],
]
h = {}
t.each { |x| h[x[1].to_sym] = [] }
t.each { |x| h[x[1].to_sym].push(x[0]) }
puts h
