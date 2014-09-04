# input and output
# read and wright to files
File.open("./my_file.txt", "w+") do |p|
 p.puts "Hello, world!"
end
# show to termial
puts IO.readlines('my_file.txt')
# add other line with in my_file
File.open("./my_file.txt", "a+") do |p|
 p.puts "Hello, world!"
end