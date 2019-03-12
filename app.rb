require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post'/piglatinize' do
        # @name = params[:name]
        # @favorite_food = params[:favorite_food]
        @user_phrase = params[:user_phrase]

        # @pig_name = PigLatinizer.new.piglatinize(@name)
        # @pig_favorite_food = PigLatinizer.new.piglatinize(@favorite_food)
        @pig_user_phrase = PigLatinizer.new.piglatinize(@user_phrase)

        # erb :piglatinize
    end
end