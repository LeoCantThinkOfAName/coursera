first, second, third, fourth = ARGV

puts "I love #{first}!"
puts "And #{second} too!"
puts "Also #{third}!"
puts "#{fourth} probably..."

print "Why you love #{first} then? "
ans = $stdin.gets.chomp()
puts "I see, so #{first} is #{ans}..."