# diffent between include and extends]
# extend Makes method available to the class
# include make the method available inside the class

module SayHello
	def say_hello
		puts "Hello #{name}"
	end
# 
	def say_something
		puts "Something"
	end
end
 
class Hello
	# passing to say_something
 extend SayHello
	include SayHello


	def initialize(name)
	  @name = name
	end
end

Hello.say_something