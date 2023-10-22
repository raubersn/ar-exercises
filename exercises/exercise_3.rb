require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "\nExercise 3"
puts "----------"

# Your code goes here ...
@store3 = Store.find_by(id: 3)

@store3.destroy
puts "Total numbers of stores in the databse: #{Store.count}"