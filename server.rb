#!/usr/bin/ruby

require "socket"
require "colorize"

RS="\033[0m"    # reset
HC="\033[1m"    # hicolor
FRED="\033[31m" # foreground red
FGRN="\033[32m" # foreground green
FWHT="\033[37m" # foreground white

#press CTRL + C show message
trap("SIGINT") {
  puts "\n\n#{HC}#{FRED}WARNING! CTRL+C Detected closing Socket connection#{FWHT}.....#{RS}"
  exit 666
}

if RUBY_PLATFORM =~ /win32/
  system("cls")
else
  system("clear")
end

port = 8000
puts "#{HC}#{FGRN}[+] Starting Server at port : #{port} #{RS}"
time = Time.now
puts "#{HC}#{FGRN}[+] Start at : #{time}#{RS}"
server = TCPServer.open(port)   # Socket to listen on port 2000
loop {                          # Servers run forever
  Thread.start(server.accept) do |client|
    while true
      print "\n[+] Enter Command : ".blue
      com = gets.chomp
      client.puts(com)
      puts "\n+------------------------------------------------------------+"
      res = client.recv(10000)
      if res == ""
        print "\n[+] Enter Command : ".blue
        com = gets.chomp
        client.puts(com)

      else
        puts res
      end
      puts "+------------------------------------------------------------+\n"
    end
  end
}
