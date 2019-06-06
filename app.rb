require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    phrase = PigLatinizer.new
    phrase.text = params[:user_phrase]
    @text = phrase.piglatinize(phrase.text)

    erb :result
  end
end
