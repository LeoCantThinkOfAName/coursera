if File.exist? 'test.txt'

  File.foreach( 'test.txt' ) do |line|
    p line.chomp
  end

end

