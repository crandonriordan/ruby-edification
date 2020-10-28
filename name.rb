def ask_name
  puts "Please enter your name"
  name = gets.chomp
  say_name_n_times name, 9
  puts "Hello, #{name}!"
end

def say_name_n_times(name, n)
  n.times do
    puts name
  end
end


ask_name
