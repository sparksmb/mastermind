require "./lib.rb"

print_instructions

guess_count = 0
guess = ""
code = generate_code

#puts code

loop do
  print "\n>"
  guess = gets.strip
  guess_count += 1
  
  puts feedback = feedback(code, guess)
  
  break if feedback == "xxxx" or guess == "exit"
end

puts "Hooray! It took you #{guess_count} guesses." if guess != "exit"
