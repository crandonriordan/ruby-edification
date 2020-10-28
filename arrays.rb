#!/usr/bin/ruby

# Creating an Array literal
str_arr = ["Hello", "World!"]
num_arr = [4, 5, 6, 7]

# Everything in Ruby is an object. Even these arrays!
puts "Class of strArr variable is Array? : " + str_arr.instance_of?(Array).to_s

# More ways of creating arrays
arr_obj = Array.new
# One more way w/ two parameters (initial size, default values)
arr_obj_with_default = Array.new(3, 0)
puts "Printing out elements of default valued array"

arr_obj_with_default.each do |element|
    puts "#{element}"
end

