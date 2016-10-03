# characters
def leo
  print 'Leo: '
end

def candy
  print 'Candy: '
end

def prompt
 print '> '
end

def error_message
  puts 'Please type in the number of the options.'
end

def begining
  candy
  puts 'How are you doing today?'
  puts "\t1. I'm Great.\n\t2. Nothing.\n\t3. I feel horrible..."
  prompt
  ans1 = gets.chomp
  
  if ans1 == '1'
    leo
    puts "I'm Great."
    candy
    puts 'Great! Wanna go somwhere?'
    diver1
  elsif ans1 == '2'
    leo
    puts 'Nothing.'
    candy
    puts 'Up to somewhere?'
    diver1
  elsif ans1 == '3'
    leo
    puts 'I feel horrible...'
    candy
    puts 'What happened?'
    diver2
  else
    error_message
    begining
  end
end

def diver1
  puts "\t1. Cool, wanna watch some movies?\n\t2. Sure, let's get something to eat.\n\t3. Don't feel like going anywhere."
  prompt
  ans2 = gets.chomp

  if ans2 == '1'
    leo
    puts 'Cool, wanna watch some movies?'
    candy
    puts 'Any suggest?'
    diver3
  elsif ans2 == '2'
    leo
    puts "Sure, let's get something to eat." 
    candy
    puts "Yes! I'm starving!"
    diver4
  elsif ans2 == '3'
    leo
    puts "Don't feel like going anywhere."
    candy
    puts 'Are you alright?'
    diver2
  else
    error_message
    diver1
  end
end

def diver2
  puts "\t1. It's just not my day...\n\t2. I think I'm sick...\n\t3. I just don't like you, stop talking to me!"
  prompt
  ans3 = gets.chomp

  if ans3 == '1'
    leo
    puts "It's just not my day..."
    candy
    puts "Cheer up! Let's get something to eat!"
    diver4
  elsif ans3 == '2'
    leo
    puts "I think I'm sick..."
    candy
    puts 'Oh, God bless you! You should go home and get some rest.'
    puts
    puts 'You said goodbye to each other, and she left...'
  elsif ans3 == '3'
    leo
    puts "I just don't like you, stop talking to me!"
    candy
    puts 'What do you mean...'
    gets.chomp
    bad_end
  else
    error_message
    diver2
  end
end

def diver3
  puts "\t1. How about The Danish Girl?\n\t2. There's a horror file...\n\t3. Forget about it..."
  prompt
  ans4 = gets.chomp
  if ans4 == '1'
    leo
    puts 'How about The Danish Girl?'
    candy
    puts 'You silly...'
    puts
    puts "You went to the movie together, it was a great film, and you have a great night together\nAt the end of the movie, you kissed in the dark theater."
  elsif ans4 == '2'
    leo
    puts "There's a horror file..."
    candy
    puts "Nooooo! You know I don't like it!"
    puts
    puts "You know she don't like it, but you just never learned...\nAnd she just left dispointed..."
  elsif ans4 == '3'
    leo
    puts 'Forget about it...'
    candy
    puts 'Why?'
    leo
    puts "Sorry, but I just don't like you... Just leave me alone."
    candy
    puts 'What do you mean...'
    gets.chomp
    bad_end
  else
    error_message
    diver3
  end
end

def diver4
  puts "\t1. The Onion?\n\t2. How about some Japanese cuisine?\n\t3. Forget about it..."
  prompt
  ans5 = gets.chomp

  if ans5 == '1'
    leo
    puts 'The Onion?'
    candy
    puts 'You silly...'
    puts
    puts "You went to the Onion, and had a terrible meal. But both of you had a great time by just staying together.\nBy the end of the night, you take her back to her place, and kissed goodbye."
  elsif ans5 == '2'
    leo
    puts 'How about some Japanese cuisine?'
    candy
    puts 'You know me!'
    puts 
    puts "She leads the way to a not very eye catching japanese restaurant. The food was not very inpressive, but you had a good time by just staying together.\nBy the end of the night, you take her back to her place, and kissed goodbye."
  elsif ans5 == '3'
    leo
    puts 'Forget about it...'
    candy
    puts 'Why?'
    leo
    puts "Sorry, but I just don't like you... Just leave me alone."
    candy
    puts 'What do you mean...'
    gets.chomp
    bad_end
  else
    error_message
    diver4
  end
end

def bad_end
  puts "She cried silently, and left...\nBoth of you were pretty sure you'll never see each other again."
end
  
begining()

