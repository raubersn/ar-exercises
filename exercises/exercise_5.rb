require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

require 'money'

Money.locale_backend = :i18n
I18n.locale = :en

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Total revenue for the entire company (all stores): #{Money.from_amount(Store.sum("annual_revenue"), "CAD").format}"
puts "Average annual revenue for all stores: #{Money.from_amount(Store.average("annual_revenue"), "CAD").format}"
puts "Number of stores that are generating $1M or more in annual sales: #{Store.where("annual_revenue >= ?", 1000000).count}"