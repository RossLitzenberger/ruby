# include Enumerable lesson
class BankAccount
	attr_reader :transactions
	include Enumerable
	include Comparable
	
	def <=> (other_account)
		self.balance <=> other_account.balance
	end

	def initialize(name)
		@name = name
		@balance = 0
		@transactions = []
	end

	def deposit(amount)
		@transactions.push(amount)	
	end

	def withdraw(amount)
		@transactions.push(-amount) 
	end

	def balance
		@transactions.inject(0) { |sum, iterator| sum += iterator }
	end

	def each
		@transactions.each{ |transaction| yield transaction}
	end

	def to_s
		"<#{self.class}:name: #{@name}, balance: #{balance}>"
	end
end

account1 = BankAccount.new("Ross Litzenberger")
account1.deposit(200)

account2 = BankAccount.new("Mike The Frog")
account2.deposit(200)
`
# puts "Is account 1 greater then account 2? #{account1 <=  account2}" 

account3 = BankAccount.new("Mike The Frog")
account3.deposit(200)

# between method
puts "Is account 1 between account 2 and account 3? #{account1.between?(account2, account3)}" 
