class WelcomeController < ApplicationController
  def index
    @hello = 'Welcome to my first rails app and Hello world!!'
  end

  def show
    @name = if params[:name]
              params[:name]
            else
              'Nameless'
            end
  end

  def lorem
    if params[:lorems] == 'hipster'
      @text = "Church-key live-edge before they sold out, ugh blue bottle intelligentsia pork belly offal try-hard. Mlkshk tofu hella cornhole edison bulb occupy, dreamcatcher aesthetic semiotics everyday carry. Celiac cred glossier cold-pressed 90's, selvage XOXO tumeric. Lyft blog readymade, edison bulb literally fap iPhone cronut subway tile yuccie chia snackwave. Tbh affogato letterpress artisan meh air plant. Flexitarian forage pug readymade, drinking vinegar pop-up green juice kickstarter before they sold out organic master cleanse poke hot chicken marfa. Leggings banh mi +1, cronut umami iceland narwhal."
    elsif params[:lorems] == 'bacon'
      @text = 'Bacon ipsum dolor amet landjaeger biltong sirloin pork belly spare ribs. Flank biltong turkey meatball doner, venison prosciutto pancetta beef ribs salami alcatra fatback bacon short loin shankle. Swine capicola doner ham hock pastrami shank. Spare ribs pastrami beef kielbasa doner cupim.'
    elsif params[:lorems] == 'gym'
      @text = 'We are an independent gym that is committed to working with you to gain the results you want. Whether your aim is to loose weight, tone up, build bulk or gain weight we can put together a gym programme or recommend the right classes for you to attend in our studios.'
    elsif params[:lorems] == 'standard'
      @text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur varius nisl eros, vel vestibulum neque condimentum eu. Suspendisse imperdiet pellentesque tortor. Vestibulum id mollis est. Morbi iaculis pharetra ex, at convallis ipsum pretium et. Nulla facilisi. Ut semper facilisis dignissim. Curabitur sagittis erat sit amet nunc consequat, vitae pretium nibh lobortis. Integer auctor purus ut tempus ullamcorper. Donec ornare mollis augue at laoreet. Morbi id metus quis arcu fermentum ullamcorper. Proin vel vestibulum tellus. Pellentesque sit amet pulvinar metus.'
    end
    @paragraphs = (params[:paragraphs] || 1).to_i
  end
end
