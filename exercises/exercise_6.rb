require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "\nExercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram",
                        last_name: "Virani",
                        hourly_rate: 60)
@store1.employees.create(first_name: "Ronaldinho",
                        last_name: "Gaucho",
                        hourly_rate: 49)
@store1.employees.create(first_name: "Galo",
                        last_name: "Doido",
                        hourly_rate: 13)
@store2.employees.create(first_name: "Eder",
                        last_name: "Aleixo",
                        hourly_rate: 80)
@store2.employees.create(first_name: "Hulk",
                        last_name: "Paraiba",
                        hourly_rate: 7)

# pp Employee.all
# pp @store1.employees.all
# pp @store2.employees.all