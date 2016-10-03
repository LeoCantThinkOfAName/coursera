def add(num_a, num_b)
  puts "ADDING #{num_a} + #{num_b}"
  num_a + num_b
end

def subtract(num_a, num_b)
  puts "SUBTRACTING #{num_a} - #{num_b}"
  num_a - num_b
end

def multiply(num_a, num_b)
  puts "MULTIPLY #{num_a} * #{num_b}"
  num_a * num_b
end

def divide(num_a, num_b)
  puts "DIVIDING #{num_a} / #{num_b}"
  num_a / num_b
end

puts "Let's do some match with just functions!"

age = add(20, 7)
height = subtract(170, 2)
weight = multiply(5, 10)
iq = divide(200, 100)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

puts 'Here is a puzzle.'

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what} can you do it by hand?"
