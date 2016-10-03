class Street
  def enter()
    puts "You an Candy were walk on the street..."
    puts "Candy: Let's go buy some COOOOOL snacks!"
    puts "\t1. Yay!\n\t2. Not gonna happen."
    ans1 = $stdin.gets.chomp

    if ans1 == '1'
      puts "Leo: Yay!"
      puts "Candy: Hurry up!"
      return 'mall'
    elsif ans1 == '2'
      puts "Leo: Not gonna happen."
      puts "Candy: ..."
      $stdin.gets.chomp
      return 'bad_end'
    else 
      puts "READ THE OPTIONS WILL YOU!?"
      return 'street'
    end
  end
end

class Mall
  def enter()
    puts "You and Candy arrived the mall..."
    puts "Candy: This seems so delicious!"
    puts "\t1. It is!\n\t2. Yuck!"
    ans2 = $stdin.gets.chomp

    if ans2 == '1'
      puts "Leo: It is!"
      puts "Candy: Right?"
      puts "Leo: We should bring them all home!"
      puts "Candy: Yayyyy!"
      return 'house'
    elsif ans2 == '2'
      puts "Leo: Yuck!"
      puts "Candy: ..."
      $stdin.gets.chomp
      return 'bad_end'
    else
      puts "READ THE OPTIONS WILL YOU!?"
      return 'mall'
    end
  end
end

class House
  def enter()
    puts "You brought a tons of biscuits home with Candy..."
    puts "Candy: I love you so much..."
    puts "\t1. Me too...\n\t2. I don't think so."
    ans3 = $stdin.gets.chomp

    if ans3 == '1'
      puts "Leo: Me too..."
      puts "You hold her hands, and gave her a heartful kiss."
      return 'good_end'
    elsif ans3 == '2'
      puts "Leo: I don't think so."
      puts "Candy: ..."
      return 'bad_end'
    else
      puts "READ THE OPTIONS WILL YOU!?"
      return 'house'
    end
  end
end

class BadEnd
  @@quips = [
    "Such a loser!",
    "Get ou of my face!",
    "CY@!"
  ]

  def enter()
    puts @@quips[rand(@@quips.length)]
    exit(1)
  end
end

class GoodEnd
  def enter()
    puts "And you live happily forever."
  end
end

class Map
  @@scenes = {
    'street' => Street.new(),
    'mall' => Mall.new(),
    'house' => House.new(),
    'bad_end' => BadEnd.new(),
    'good_end' => GoodEnd.new()
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end

class Engine
  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('good_end')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    current_scene.enter()
  end
end

a_map = Map.new('street')
a_game = Engine.new(a_map)
a_game.play()