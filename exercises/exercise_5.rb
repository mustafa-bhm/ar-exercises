require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts "====== Total revenue ============"
@total_revenue = Store.sum("annual_revenue")

puts "total revenue is #{@total_revenue}"

puts "====== Average revenue ============"
@total_stores = Store.count

@average_revenue = @total_revenue / @total_stores
puts "Average annual revenue for all stores: $#{@average_revenue}"

puts "===== number of stores that are generating $1M or more ====="
@million_dollar_stores = Store.where('annual_revenue >= 1000000')
@total_of_million_dollar_stores = @million_dollar_stores.count
puts "Number of stores that are generating $1M or more in annual sales: #{@total_of_million_dollar_stores}"