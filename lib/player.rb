class Player

  attr_reader :name, :hp

  HP = 100

  def initialize(name, hp = HP)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= damage
  end

  def damage
    p rand(1..10)
  end
end
