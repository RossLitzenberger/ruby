# class`
Struct.new("Treehouse", :name, :location)

treehouse = Struct::Treehouse.new
treehouse.name = "Treehouse"
treehouse.location = "Treehouse Islands"

puts treehouse.inspect

# that great but we need to get that to the top level 