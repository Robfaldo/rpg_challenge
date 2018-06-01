require 'sinatra/base'

class Battle < Sinatra::Base
  STARTING_HEALTH = 100
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session['player_1'] = params[:player_1_name]
    session['player_2'] = params[:player_2_name]
    session['player_2_hitpoints'] = STARTING_HEALTH
    redirect "/play"
  end

  get '/play' do
    @player_1 = session['player_1']
    @player_2 = session['player_2']
    @player_2_hitpoints = session['player_2_hitpoints']
    erb :play
  end

  post '/attack' do
    @player_1 = session['player_1']
    @player_2 = session['player_2']
    @player_2_hitpoints = session['player_2_hitpoints']
    @attacked = true
    erb :play
  end

  # Start the server if ruby file executed directly
  run! if app_file == $0

end
