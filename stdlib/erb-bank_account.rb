require 'erb'

class BankAccount
TEMPLATE = <<-TEMPLATE
 Bank Account: <%= @name %>
----
<% @transaction.each do |transaction| %>
Transaction: <%= transaction %>
<% end %>
---
TEMPLATE
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

	def get_binding
		binding
	end

	def display
		ERB.new(TEMPLATE).result(get_binding)
	end
end



account1 = BankAccount.new("Ross Litzenberger")
account1.deposit(100)
account1.withdraw(50)
account1.deposit(500)
account1.withdraw(21)

puts account1.display