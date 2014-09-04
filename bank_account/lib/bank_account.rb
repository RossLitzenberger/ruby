class BankAccount
	attr_reader :name, :transactions

	def initialize(name)
		@transactions = []
	  @name = name
	end

	def deposit(amount)
		@transactions.push(amount)	
		amount
	end

	# def withdraw(amount)
	# 	@transactions.push(-amount) 
	# end

end