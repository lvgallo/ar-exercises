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
class Employee
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store_id, presence: true
end

class Store
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :apparel
  
  def apparel
    if mens_apparel == nil && womens_apparel == nil || !mens_apparel && !womens_apparel
      errors.add(:apparel,"Stores must carry at least one of the men's or women's apparel")
    end
  end
end

puts "type the store name:"
@store_name=gets.chomp

store8= Store.create(name:"#{@store_name}")
puts store8.errors.full_messages