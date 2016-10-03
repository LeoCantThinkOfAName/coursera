user = ARGV.first
prompt = "#{user}: "
puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print prompt
likes = $stdin.gets.chomp()

puts "Where do you live #{user}?"
print prompt
lives = $stdin.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = $stdin.gets.chomp()

puts <<MESSAGE
Alright, so You said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you Have a #{computer} computer. Nice.
MESSAGE