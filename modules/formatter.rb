module FormatAttributes
	def formats(*attributes)
		@format_attributes = attributes
	end

	def format_attributes
		@format_attributes
	end
end

module Formatter
	def display
		self.class.format_attributes.each do |attribute|
			puts "[#{attribute.to_s.upcase}] #{send(attribute)}"
		end
	end
end

class Resume
	extend FormatAttributes
	include Formatter
	attr_accessor :name, :phone_number, :email, :experience
	formats :name, :phone_number, :email, :experience
end

class CV
	extend FormatAttributes
	include Formatter
	attr_accessor :name, :experience
	formats :name, :experience
end
# print all this code above 
resume = Resume.new
resume.name = "Ross Litzenberger"
resume.email = "example@example.com"
resume.phone_number = "555-5555"
resume.experience = "Ruby, Laravel"

resume.display

puts "-----------"

cv = CV.new
cv.name = "Ross Litzenberger"
cv.experience = "Ruby"
cv.display