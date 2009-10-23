require 'rubygems'
require 'sinatra'

set :root, File.dirname(__FILE__)
set :public, Proc.new { File.join(root, "website", "_site") }

get "/" do
  File.open('./website/_site/index.html')
end