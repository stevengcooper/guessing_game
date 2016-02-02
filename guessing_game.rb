def random_number
  rand(1..100)
end

def input
  random_number
  n = random_number
  array = []
  5.times do
    puts "I've choosen a number between 1 & 100. You have 5 guesses to get it right."
    array << gets.chomp.to_i
  end
end

# n = random_number
# array = []
# 5.times do
#   puts "I've choosen a number between 1 & 100. You have 5 guesses to get it right."
#   array << gets.chomp.to_i
# end

  # array.each do |number|
  #   until number == n
  #     if number < n
  #       puts "Your guess is too low."
  #     elsif number > n
  #       puts "Your guess is too high."
  #     elsif array.include (n)
  #       puts "It didn't work last time. Way to waste a guess, genuis."
  #     elsif number == n
  #       puts "Winner, Winner, Chicken Dinner."
  #     else
  #       puts "You did something I didn't think of."
  #     end
  #   end
  # end
