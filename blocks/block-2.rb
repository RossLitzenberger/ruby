# block given if a block was pass in or not

def say_hello (&block)
	puts "Hello, world"
	name = block.call
	puts "You entered #{name} as your name."
end


# say_hello { "Jason Serfie" }

# if you use a method block
say_hello do 
	puts "Ross say_hello block."
	"Todd"
	"John"
	"Jason"
end