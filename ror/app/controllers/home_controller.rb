# app/controllers/home_controller.rb
class HomeController < ApplicationController
  def index
    render plain: "Welcome to the Tebako RoR App!"
  end

  def api
    response = HTTParty.get("https://jsonplaceholder.typicode.com/todos/1")
    render json: response.body
  end
end