def number
  number = rand(1..100)
end

def input
  puts "I picked a number between 1 & 100. Try and guess it if you dare."
  input = gets.chomp.to_i
end
