puts "fiction or non_fiction?"
genre = gets.chomp.downcase
if genre == "fiction"
  puts "try reading this"
elsif genre == "non-fiction"
  puts "try reading that"
else
  put "sorry, I don't know about that"
end
