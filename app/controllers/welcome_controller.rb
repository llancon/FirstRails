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

  def lorem
    if params[:lorems] == "hipster"
      @text = "Church-key live-edge before they sold out, ugh blue bottle intelligentsia pork belly offal try-hard. Mlkshk tofu hella cornhole edison bulb occupy, dreamcatcher aesthetic semiotics everyday carry. Celiac cred glossier cold-pressed 90's, selvage XOXO tumeric. Lyft blog readymade, edison bulb literally fap iPhone cronut subway tile yuccie chia snackwave. Tbh affogato letterpress artisan meh air plant. Flexitarian forage pug readymade, drinking vinegar pop-up green juice kickstarter before they sold out organic master cleanse poke hot chicken marfa. Leggings banh mi +1, cronut umami iceland narwhal."
    end
  end

end
