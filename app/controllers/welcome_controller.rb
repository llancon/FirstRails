class WelcomeController < ApplicationController

  def index
    @hello = "Welcome to my first rails app and Hello world!!"
  end

  def show
    if params[:name]
      @name = params[:name]
    else
      @name = "Nameless"
    end
  end

end
