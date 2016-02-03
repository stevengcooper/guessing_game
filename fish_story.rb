def fish_story
  puts "What kind of fish is it?"
  type = gets.chomp
  puts "What is the smallest length in feet. Just numbers please."
  minimum = gets.chomp.to_i
  puts "What is biggest length in feet. Just numbers please."
  maximum = gets.chomp.to_i
  range = rand(minimum..maximum)
  puts "Today I went fishing and caught a #{type}. It was #{range} feet long!"
end

fish_story
