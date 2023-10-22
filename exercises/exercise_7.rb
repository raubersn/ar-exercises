require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "\nPlease, provide a name for the new store:"
store_name = gets.chomp

attempt = Store.create(name: store_name)
attempt.errors.full_messages.each { |message| puts "Error! #{message}"}
