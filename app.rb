require_relative 'config/environment'

class App < Sinatra::Base


 # POST '/piglatinize'
 #   returns a 200 status code (FAILED - 7)
 #   displays the pig latinized phrase upon form submission (FAILED - 8)
 # POST '/piglatinize' again
 #   returns a 200 status code (FAILED - 9)
 #   displays the pig latinized phrase upon form submission (FAILED - 10)
 #


  get '/' do

    erb :user_input
  end

  post "/piglatinize" do
    text_from_user = params[:user_phrase]
    @analyzed_text = text_from_user
    erb :piglatinize

  end


end
