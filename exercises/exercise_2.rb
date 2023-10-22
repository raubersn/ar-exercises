require_relative '../setup'
require_relative './exercise_1'

puts "\nExercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

# pp @store1
# pp @store2

@store1.name = "Victoria"
@store1.save

# @store1 = Store.find_by(id: 1)
# pp @store1
