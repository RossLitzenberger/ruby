# proc

def return_from_proc
	variable = proc { return "returning form proc inside method"}
	variable.call
	return "returning from proc as last line from method"
end

# lambda

def return_from_lambda
	variable = lambda { return "returning form lambda inside method"}
	variable.call
	return "returning from lambda as last line from method"
end

# print the result

puts return_from_proc

puts return_from_lambda