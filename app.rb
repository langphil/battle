require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/attack'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    player_one = Player.new(params[:player_one_name])
    player_two = Player.new(params[:player_two_name])
    $game = Game.new(player_one, player_two)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    Attack.run(@game.opponent(@game.current_player))
    erb :attack
  end

  get '/game-over' do
    @game = $game
    @loser = @game.loser
    erb :gameover
  end

  post '/switch-turns' do
    $game.player_turn
    if $game.game_over?
      redirect '/game-over'
    else
      redirect '/play'
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
