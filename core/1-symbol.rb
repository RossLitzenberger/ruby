class BankAccount
	def initialize(name)
  	@name = name
  	@transactions = []
	end	

	def deposit(amount, options={})
		options[:memo] ||= 'Reguler deposit'
		@transactions.push({:amount => amount, :memo => options[:memo]})
	end
end

bank_account = BankAccount.new("Ross")
bank_account.deposit(100)
bank_account.deposit(100, {:memo => "This was a gift from Papa."})

puts bank_account.inspect