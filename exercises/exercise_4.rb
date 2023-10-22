require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require 'money'

Money.locale_backend = :i18n
I18n.locale = :en

puts "\nExercise 4"
puts "----------"

# Your code goes here ...
# Surrey (annual_revenue of 224000, carries women's apparel only)
Store.create(name: "Surrey",
            annual_revenue: 224000,
            mens_apparel: false,
            womens_apparel: true)
# Whistler (annual_revenue of 1900000 carries men's apparel only)
Store.create(name: "Whistler",
            annual_revenue: 1900000,
            mens_apparel: true,
            womens_apparel: false)
# Yaletown (annual_revenue of 430000 carries men's and women's apparel)
Store.create(name: "Yaletown",
            annual_revenue: 430000,
            mens_apparel: true,
            womens_apparel: true)

puts "\n----- Stores that carry men's apparel -----"
@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts "#{store.name} store's annual revenue: #{Money.from_amount(store.annual_revenue, "CAD").format}"
end

puts "\n----- Stores that carry women's apparel and are generating less than $1M in annual revenue -----"
@low_revenue_womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

@low_revenue_womens_stores.each do |store|
  puts "#{store.name} store's has a low annual revenue of #{Money.from_amount(store.annual_revenue, "CAD").format}"
end
