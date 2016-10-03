def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheese!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts
end

# set cheese = 20; crackers = 30
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

# set two variables, and take these variables as cheese_and_crackers's paramenter'
puts "Or, we can use variables from our script: "
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# use math expression as cheese_and_crackers's parameter'
puts "We can even do math inside too: "
cheese_and_crackers(10 + 20, 5 + 6)

# use per defined variables plus math expression as cheese_andcrackers's parameter'
puts "And we can combone the two, variables and math: "
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)