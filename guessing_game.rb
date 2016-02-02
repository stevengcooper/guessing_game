def random_number
  rand(1..100)
end

def input
  target = random_number
  array = []
  5.times do
    puts "I've choosen a number between 1 & 100. You have 5 guesses to get it right."
    number = gets.chomp.to_i
    puts array
    if array.include?(number)
      puts "#{number} didn't work the first time. Way to waste a guess, genius."
    elsif number == target
      puts "You won!"
      break
    elsif number < target
      puts "You're guess is too low."
      array << number
    elsif number > target
      puts "You're guess is too high."
      array << number
    end
  end
end

input
