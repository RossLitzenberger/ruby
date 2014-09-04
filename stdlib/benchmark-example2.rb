require 'benchmark'

repetitions = 10000000
class BankAccount
	def initialize(name)
		@name = name
		@transaction =[]
	end

	def deposit(amout)
		@transaction.push(amout)
	end

	def withdraw(amount)
		@transaction.push(-amount)
	end
end

BankStruct = Struct.new('BankStruct', :name, :transactions)

Benchmark.bm(20) do |x|
	x.report "BankAccount Class" do
		repetitions.times do
			account = BankStruct.new('Ross Litzenberger', [])
			account.name = 'Ross Litzenberger'
			account.transactions.push(100)
			account.transactions.push(-50)
		end
	end
end