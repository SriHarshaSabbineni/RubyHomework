books = ["DFGHJKL", "DFGHrtyui", "WERcvbn"]
authors = ["Asdf Hjk", "Qwet Yuio", "Gcvb"]
auth = authors.map { |x| x.split(" ").first.downcase.to_sym }
h = {}
auth.each.with_index { |x, i| h[x] = books[i] }
puts h
