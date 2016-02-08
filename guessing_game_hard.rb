require 'byebug'

def random_number
  random = (0..100)
  random = random.to_a.shuffle!
  random = random[6].to_i
end

def snark
  choices = ["Is this your first time guessing?", "Well, you're just shooting from the hip, cowboy.", "You're not even warm.", "Do you relish wrong answers?", "Congrats! You're wrong again."]
  puts choices.sample
end

def input
  random = random_number
  range = (1..100)
  user_guesses = []
  5.times do
    puts "I've choosen a number between 1 & 100. You have 5 guesses to get it right."
    number = gets.chomp.to_i
    if range.include?(number)
      if number == random
        puts "You won!"
        break
      elsif user_guesses.include?(number)
        puts "That number still doesn't work, genius."
      elsif number < random
        puts "Your guess is too low."
        range = (number..range.last)
        user_guesses << number
      else
        puts "Your guess is too high."
        range = (range.first..number)
        user_guesses << number
      end
    else
      puts snark
    end
  end
end
input
