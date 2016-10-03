class Person
    attr_accessor :first_name, :last_name

    @@people = []

    def initialize(first_name, last_name)
        self.first_name = first_name
        self.last_name = last_name
        @@people << self
    end

    def self.search(last_name)
        @@people.select { |person| person.last_name == last_name }
    end

    def to_s
        "#{first_name} #{last_name}"
    end
end

p1 = Person.new("Candy", "Cheng")
p2 = Person.new("Leo", "Lin")
p3 = Person.new("Stella", "Hsu")
p4 = Person.new("Anna", "Chang")
p5 = Person.new("Mandy", "Hu")

puts "Please insert lastname to process."
name = $stdin.gets.chomp
puts Person.search(name)