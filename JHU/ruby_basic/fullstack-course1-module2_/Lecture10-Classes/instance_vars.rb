class Person 
  def initialize (name, age) # "CONSTRUCTOR" 
    @name = name 
    @age = age
  end 
  def name # getter
    @name 
  end

  def age
    @age
  end

  def name= (new_name) # setter
    @name = new_name 
  end

  def age= (new_age)
    @age = new_age
  end
end 

person1 = Person.new("Joe", 14) 
puts person1.name # Joe 
person1.name = "Mike"
puts person1.name # Mike

puts person1.age
person1.age = 10
puts person1.age
# puts person1.age # undefined method `age' for #<Person:
