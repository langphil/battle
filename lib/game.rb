class Game
  attr_reader :players, :current_player

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def player_1
    players.first
  end

  def player_2
    players.last
  end

  def player_turn
    @current_player = opponent(current_player)
  end

  def opponent(the_player)
    players.select { |p| p != the_player }.first
  end

  def game_over?
    players.map { |p| p.hp }.include?(0)
  end

  def loser
    players.select { |p| p.hp == 0 }.first
  end
end
