def number
  number = rand(1..100)
  n = number
end

def input
  puts "I picked a number between 1 & 100. Try and guess it if you dare."
  return gets.chomp.to_i
  # if input > 100 || input < 1
  #   puts "I said between 1 & 100. Try following the rules."
  # end
end

until
  input
  if number < input
    puts "You are lower than my number."
  elsif number > input
    puts "You are higher than my number."
  else
    puts "That's the number. Well played!"
    number = input
  end
end
