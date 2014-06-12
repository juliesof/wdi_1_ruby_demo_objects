# This will "insert" the contents of the person.rb here
require_relative 'person.rb'
require_relative '../lib/insured_person.rb'
require 'date'

tom = Person.new('Tom', 'Dyer', '06-02-1942')
jill = Person.new('Jill', 'Reyd', '08-14-1965')

puts "tom's first name is #{tom.first_name} and #{jill.last_name}"

#using setter method to change tom's last name
tom.last_name = "Jones"
puts "tom\'s last name is #{tom.last_name}"

#these are good debugging tools
puts tom
puts "****"
puts tom.inspect

puts "Tom's full name is #{tom.full_name}"
puts tom.age



msg = tom.give_insurance? ? "should" : "should not"
puts "Tom #{msg} get insured."


