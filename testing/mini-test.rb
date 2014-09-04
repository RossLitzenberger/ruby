require 'minitest/autorun'
require 'minitest/spec'

describe 'MyTests' do
	before do 
		puts "Test are beginning"
	end
	it "adds 2 + 2" do
		(2+2).must_equal 4
	end
	it "includes a frog" do
		%w(dog cat frog).must_include('frog')
	end

	it "must eb a Fixnum" do
		(2+2).must_be_instance_of Fixnum
	end

	it "Should rasie a error " do 
		array = []
		lambda { array.hello}.must_raise NoMethodError
	end
end