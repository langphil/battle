require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    $player_one = Player.new(params[:player_one_name])
    $player_two = Player.new(params[:player_two_name])
    redirect '/play'
  end

  get '/play' do
    @player_one_name = $player_one.name
    @player_two_name = $player_two.name
    @player_one_hp = $player_one.hp
    @player_two_hp = $player_two.hp
    erb :play
  end

  get '/attack' do
    @player_one_name = $player_one.name
    @player_two_name = $player_two.name
    Game.new.attack($player_two)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
