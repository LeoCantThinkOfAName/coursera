from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"

# open source file
input = File.open(from_file)
# get the content form source file
indata = input.read()

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exists? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
$stdin.gets


# open destination file and set it to writable
output = File.open(to_file, "w")
# write in the content from source file
output.write(indata)

puts "Alright, all done."

# close and save both file
output.close()
input.close()


