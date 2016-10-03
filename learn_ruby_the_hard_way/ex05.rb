my_name = "Leo L."
my_age = 27
my_height = 168
my_weight = 50
my_eyes = "brown"
my_teeth = "white"
my_hair = "black"

puts "Let's talk about %s." %my_name
puts "He's %d centimeters tall" %my_height
puts "He's %d kilograms heavy." %my_weight
puts "Actually it's a lil bit too thin."
puts "He's got %s eyes and %s hair." %[my_eyes, my_hair]
puts "His teeth are usually %s depending on the coffee." %my_teeth

puts "If I add %d, %d, and %d I got %d." %[my_age, my_height, my_weight, my_age + my_height + my_weight]

puts "%dcm is about to #{my_height * 0.39} in." %my_height
puts "%dkg is about to #{(my_weight * 2.2).to_i} pd" %my_weight