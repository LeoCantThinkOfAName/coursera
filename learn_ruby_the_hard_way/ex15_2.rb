print "Type in the file name to read: "
filename = gets.chomp()
textcontent = File.open(filename)

puts textcontent.read()