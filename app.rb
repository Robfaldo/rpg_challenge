require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect "/play"
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_2_hitpoints = $player_2.hp
    erb :play
  end

  post '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1.attack(@player_2)
    @attacked = true
    erb :play
  end

  # Start the server if ruby file executed directly
  run! if app_file == $0

end
