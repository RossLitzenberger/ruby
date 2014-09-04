# ensure what ever you put into the block it will pass.
# rasie it will give a error but we ensure that it run
# rescue will capure the erroe and recover from raise

def header(&block)
	puts "This is our header"
	block.call	
	puts "This is our footer."
rescue 
	puts "This is where we would rescue an error."
ensure
	puts "i am inside of the ensure block"
end

header do 	
	puts "This is the body of the header"
	raise " This is an error"
end