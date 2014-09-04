# block

def say_hello (&block)
	puts "Hello, world"
	# this will value the block add to create block code
	block.call
end

# create a block

# first way
	#say_hello {puts "this is ross"}

# second
	say_hello do 
		puts "this is ross"
	end