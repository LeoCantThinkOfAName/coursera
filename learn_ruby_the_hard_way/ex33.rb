i = 0
numbers = []

while i < 8
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "Number now: #{numbers}"
  puts "At the bottom i is #{i}"
end

puts 'The numbers: '

for num in numbers
  puts num
end

j = 0
elements = []

for j in (0..5)
  puts "At the top j is #{j}"
  elements.push(j)

  j += 1
  puts "Number now: #{elements}"
  puts "At the bottom j is #{j}"
end