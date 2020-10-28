#!/usr/bin/ruby

def say_input
    puts "Tell us what to say!"
    input = gets.strip
    puts "Okay, we will say #{input}"
end

say_input