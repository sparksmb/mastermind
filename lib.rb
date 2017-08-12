def print_instructions
  puts "Enter a 4 letter code A - H e.g. EDAB"
  puts "Feedback provided in the form of _x_o"
  puts "Where '_' is not in the code"
  puts "  and 'O' is correct letter incorrect position"
  puts "  and 'x' is correct letter correct position"
  puts "Keep guessing until you get the code right"
  puts "or type 'exit' to quit."
  puts
end

def generate_code
  letters = ['A','B','C','D','E','F','G','H']
  indicies = []
  
  while indicies.count < 4 do
    index = rand(8)
    if not indicies.include? index
      indicies << index
    end
  end
  
  (indicies.map {|i| letters[i]}).join
end

def feedback(code, guess)
  feedback = ""
  guess.split('').each_with_index {|c,i|
    if c == code[i]
      feedback += "x"
    elsif code.include? c
      feedback += "o"
    else
      feedback += "_"
    end
  }
  return feedback
end

