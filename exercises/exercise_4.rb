require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store3 = Store.create(name: "Surry", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store4 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel:false )
store5 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel:true)

@mens_stores = Store.where(mens_apparel: true)
#####
@mens_stores.each do |store|
  puts "Name of store #{store.name} , annual revenue is #{store.annual_revenue} "
end

#####
puts  "=========================="
@women_stores = Store.where("womens_apparel = true AND annual_revenue < 1000000")
@women_stores.each do |store|
  puts "Name of store #{store.name} , annual revenue is #{store.annual_revenue} "
end



puts "Number of stores is #{Store.count} "
