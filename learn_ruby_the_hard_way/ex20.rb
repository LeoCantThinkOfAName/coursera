# set one variable as the first passed in ARGV file
input_file = ARGV[0]

# set a function that read the passed in file
def print_all(f)
    puts f.read()
end

# set a function that point to the first letter of the file
def rewind(f)
    f.seek(0, IO::SEEK_SET)
end

# set a function that print out the num of lines and a single line of the file
def print_a_line(line_count, f)
    puts "#{line_count} #{f.readline()}"
end

# open the file for further operation
current_file = File.open(input_file)

puts "First let's print the whole file:"
puts

# print out the whole file content
print_all(current_file)

puts "Now let's rewind, lind of like a tape."

# point to the first line of the file
rewind(current_file)

puts "Let's print three lines:"

# assign the current line to the first line
current_line = 1
print_a_line(current_line, current_file)

# + 1 line to the second line
current_line = current_line + 1
print_a_line(current_line, current_file)

# + 1 line to the third line
current_line = current_line + 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)