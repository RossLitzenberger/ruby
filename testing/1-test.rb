require 'minitest/autorun'

class MyTest < MiniTest::Unit::TestCase
	
	def test_that_addition_works
		assert_equal 4, 2+2
	end

	def test_that_my_array_has_a_value
		my_array = %w(dog cat cow)
			assert my_array.include?('cow')
	end

	def test_assert_delta
		assert_in_delta 3.15, 3, 0.2
	end

	# def test_assert_match
	# 	assert_match [world], 'hello world'
	# end

	def test_nil
		some_var = nil
		assert_nil some_var
	end		

	def test_output
		assert_output "hello world", nil do 
			print 'hello world'
		end
	end
	
	# def test_raise
	# 	assert_raise NameError do
	# 		this_variable_doesnt_exits
	# 	end
	# end

	def test_respond
		assert_respond_to Array.new, 'include?'
	end
end	