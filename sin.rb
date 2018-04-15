#!/usr/bin/ruby
require 'rubygems'
require 'sinatra'

set :bind, '0.0.0.0'
set :port, 9999
set :public, Dir.pwd

get '/' do
	File.read(File.join('public', 'test.jpg'))
end
