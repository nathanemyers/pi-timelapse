#!/usr/bin/ruby
require 'webrick'

server = WEBrick::HTTPServer.new Port: 9999
server.mount '/', WEBrick::HTTPServlet::FileHandler, '/home/pi/pi-timelapse/public/'
trap("INT") { server.stop }
server.start
