# puts is use to print out stuffs
puts 'I love Candy!'
puts

# simply use key = value to make a variable
girl = 'Candy'
puts girl
puts

# use #{STH} to wrap up anything to a string
puts 'I love #{girl} so much!'
puts

# here's some different way to pass a variable into string
puts 'What is %s' % girl
puts

print "'print' can print out content without line break(first paragraph)"
print 'Like this!(second paragraph)'
puts

# some other way to use string
formatter = '%s %s %s'
puts formatter % ['Candy', 'is', 'cute']
puts

# use "\" to use some special symbol
puts "Candy is \nCute!"
puts

# wrap up a whole paragraph with "<<PLACEHOLDER"
puts <<PARAGRAPH
Candy is the cutest girl in the world!
I love her so much!
PARAGRAPH
puts

# use "\t" can make some indents
puts <<PARAGRAPH
About Candy:
\t She is cute
\t She is smart
\t She is pretty
\t She is kind
And so on...
PARAGRAPH
puts

# use gets.chomp() to ask for some input!
print "Who's the cutest girl in the world?"
person = $stdin.gets.chomp
puts "I know it'll be #{person}!"
puts

# use require to call other libery

# excute some other files with ARGV
feeds_me = ARGV

puts 'This script is called #{$0}'
puts 'And you called the other script which named %s' % feeds_me 
puts

# read a text file with File.open and read method
puts 'Let me read somthing for you!'
file = $stdin.gets.chomp
txt = File.open(file)
puts 'Opening #{file}...'
puts '-' * 10
puts txt.read
puts '-' * 10

# write something new to aother files!
puts 'Choose a file to rewrite!'
file2 = $stdin.gets.chomp
file_2 = File.open(file2, 'w')
puts 'Press RETURN to continue!'
$stdin.gets
puts 'What you gonna put in?'
print 'Content: '; content = $stdin.gets.chomp
puts 'Are you sure?'
$stdin.gets
puts 'Rewritting...'
file_2.write(content)
file_2.close
puts 'Done!'
puts

# Here's the way to copy some text file
puts 'Choose a file to copy!'
file3 = $stdin.gets.chomp
file_3 = File.open(file3, 'r')
file3_content = file_3.read
puts 'Now choose a file to paste!'
file4 = $stdin.gets.chomp
file_4 = File.open(file4, 'w')
puts 'Press RETURN to continue!'
$stdin.gets
file_4.write(file3_content)
puts 'Copy process is completed!'
file_3.close
file_4.close
puts 

# use "def" to define some function!
def whos_cutest(name)
  puts '#{name} is the cutest girl in the world!'
end
puts
