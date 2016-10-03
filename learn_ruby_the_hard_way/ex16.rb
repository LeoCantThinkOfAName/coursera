# pass in the file name going to be change
filename = ARGV.first
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "? "
# press enter to procede
$stdin.gets

puts "Opening the file..."
# open the file within the name assigned, and make it writable
target = File.open(filename, "w")

puts "Truncating the file. Goodbye!"
# clean all the data in the file
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."

# ask user to type in some new content
print "line 1: "; line1 = $stdin.gets.chomp()
print "line 2: "; line2 = $stdin.gets.chomp()
print "line 3: "; line3 = $stdin.gets.chomp()

puts "I'm going to write these to the file."

# write in all the content from users
content = "#{line1}\n#{line2}\n#{line3}"
target.write(content)

puts "And finally, we close it."
# close and save the file
target.close()