#!/usr/bin/ruby
# tcp server
require 'socket'

server = TCPServer.new 8080

while session = server.accept
    puts "Client hit"
    session.puts "hello world! The time is #{Time.now}"
    session.close
end

