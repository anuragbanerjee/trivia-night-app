class SingleViewsController < ApplicationController
  def index
    authenticate_or_request_with_http_basic do |username, password|
      # username == ENV["AUTH_USERNAME"] && password == ENV["AUTH_PASSWORD"]
      username == "foo" && password == "barbaz123"
    end
  end

  def scoreboard
  end

  def correct
    m = Message.find(params[:message])
    m.score = 1
    m.save
    redirect_to root_path
  end

  def incorrect
    m = Message.find(params[:message])
    m.score = 0
    m.save
    redirect_to root_path
  end

  def triple_incorrect
    m = Message.find(params[:message])
    m.score = -3
    m.save
    redirect_to root_path
  end

  def triple_correct
    m = Message.find(params[:message])
    m.score = 3
    m.save
    redirect_to root_path
  end
end
