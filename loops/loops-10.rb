name = ''

loop do 
	print "Enter your name "
	name = gets.chomp
	if name == "Jason"
		puts "Hi #{name}, we've been expection you."
		break
	end
end