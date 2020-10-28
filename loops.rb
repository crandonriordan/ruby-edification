#!/usr/bin/ruby

i = 0;

loop do
    puts "Loop is an infinite loop that requires a manual break statement!";
    i += 1
    break if i >= 2
end

puts "---------------------"

while i < 5 do
    puts "A While loop is a loop that requires a conditional and will continuously run"
    puts "while the conditional is true"
    i += 1
end

puts "---------------------"

while !gets.chomp.eql?("yes") do
    puts "will you go slay dragons with me?"
end

puts "---------------------"

until i > 10 do
    puts "I'm running until i > 10 i = #{i}"
    i += 1
end