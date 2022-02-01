require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
  has_many :employees
end

class Employee
  belongs_to :Store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Francis", last_name: "Potato", hourly_rate: 45)
@store1.employees.create(first_name: "James", last_name: "Bain", hourly_rate: 60)
@store1.employees.create(first_name: "Gary", last_name: "Jipp", hourly_rate: 40)
@store1.employees.create(first_name: "Andy", last_name: "Lindsay", hourly_rate: 50)

@store2.employees.create(first_name: "Vasiliy", last_name: "Klimkin", hourly_rate: 38)
@store2.employees.create(first_name: "Christian", last_name: "Nally", hourly_rate: 35)
@store2.employees.create(first_name: "Dominic", last_name: "Tremblay", hourly_rate: 52)
