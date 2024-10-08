#!/usr/bin/env ruby

require "sinatra"
require "httparty"

get "/" do
  "Welcome to the Tebako Sinatra App!"
end

get "/api" do
  content_type :json
  response = HTTParty.get("https://jsonplaceholder.typicode.com/todos/1")
  response.body
end
