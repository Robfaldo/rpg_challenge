class Game

  attr_reader :player1, :player2, :turn_count

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn_count = 1
  end

  def attack(player)
    player.receive_damage
    add_turn
  end

  private

  def add_turn
    @turn_count += 1
  end
end
