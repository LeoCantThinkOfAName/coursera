# EX25 hello
module EX25
  # split every words that seperated by single space
  def self.break_words(stuff)
    words = stuff.split(' ')
  end

  # sort array 
  def self.sort_words(words)
    words.sort()
  end

  # shift method will take out the first value from array
  def self.print_first_word(words)
    word = words.shift()
    puts word
  end

  # pop will take out the last value from array
  def self.print_last_word(words)
    word = words.pop()
    puts word
  end
  
  def self.sort_sentence(sentence)
    words = break_words(sentence)
    sort_words(words)
  end

  def self.print_first_and_last(sentence)
    words = break_words(sentence)
    print_first_word(words)
    print_last_word(words)
  end

  def self.print_first_and_last_sorted(sentence)
    words = break_words(sentence)
    print_first_word(words)
    print_last_word(words)
  end 
end
