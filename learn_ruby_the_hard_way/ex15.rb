filename = ARGV.first

prompt = "> "

# open the file with the passed in filename
txt = File.open(filename)

# print out the name of the file
puts "Here is your file: #{filename}"

# print out the content of the file
puts txt.read()

puts "Type the filename again:"
print prompt

# ask user to pass a file name again
file_again = $stdin.gets.chomp()

# svae the given file name in a variable
txt_again = File.open(file_again)

# print out the content of the file within the given file name
puts txt_again.read()
