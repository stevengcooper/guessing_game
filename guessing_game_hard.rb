def random_number
  rand(1..100)
end

def less_than
  choices = ["You're guess is too low.", "Is this your first time guessing?", "Well, you're just shooting from the hip, cowboy."]
  puts choices.sample
end
def input
  target = random_number
  array = []
  5.times do
    puts "I've choosen a number between 1 & 100. You have 5 guesses to get it right."
    number = gets.chomp.to_i
    if array.include?(number)
      puts "#{number} didn't work the first time. Way to waste a guess, genius."
    elsif number == target
      puts "You won!"
      break
    elsif number < target
      less_than
      array << number
    elsif number > target
      puts "You're guess is too high."
      array << number
    end
  end
end

input
puts "Looks like you're not very good at guessing. Better luck next time."
