def random_number(low, high)
  (low..high)
  random = (low..high).to_a.shuffle!
  random[6].to_i
end

def snark
  choices = ["Is this your first time guessing?", "Well, you're just shooting from the hip, cowboy.", "You're not even warm.", "Do you relish wrong answers?", "Congrats! You're wrong again."]
  puts choices.sample
end

def input
  target = random_number(1,100)
  array = []
  5.times do
    puts "I've choosen a number between 1 & 100. You have 5 guesses to get it right."
    number = gets.chomp.to_i
    if array.include?(number) 
      puts snark
    elsif number < target
      puts "Your guess is too low."
      target = random_number("#{number}".to_i, 100)
      array << number
    elsif number > target
      puts "Your guess is too high."
      target = random_number(1, "#{number}".to_i )
      array << number
    else number == target
      puts "You won!"
      break
    end
  end
  puts "Looks like you're not very good at guessing. Better luck next time."
end

input
