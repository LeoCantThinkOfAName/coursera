#Animal is-a object
class Animal
end

# Dog is-a Animal
class Dog < Animal
  def initialize(name)
    # Dog has-a name
    @name = name
  end
end

# Cat is-a Animal
class Cat < Animal
  def initialize(name)
    # Cat has-a name
    @name = name
  end
end

# Person is-a Object
class Person
  attr_accessor :pet

  def initialize(name)
    # Person has-a name
    @name = name

    # Person has-a petof somekind
    @pet = nil
  end
end

# Employee is-a Person
class Employee < Person
  def initialize(name, salary)
    # Person has-a name
    super(name)
    
    @salary = salary
  end
end

# Fish is-a Object
class Fish
end

# Salmon is-a fish
class Salmon < Fish
end

class Halibut < Fish

# Rover is a 
rover = Dog.new("Rover")