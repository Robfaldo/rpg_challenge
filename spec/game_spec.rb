require 'game'

describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  context 'When attacking'do
    it 'it damages the player' do
      game = Game.new(player1, player2)
      allow(player2).to receive(:receive_damage)
      game.attack(player2)
    end

    describe '#player_1' do
      it 'retrieves the first player' do
        game = Game.new(player1, player2)
        expect(game.player1).to eq player1
      end
    end

    describe '#player_2' do
      it 'retrieves the second player' do
        game = Game.new(player1, player2)
        expect(game.player1).to eq player1
      end
    end
  end

  it 'it can increase the number of turns' do
    game = Game.new(player1, player2)
    allow(player2).to receive(:receive_damage)
    allow(player1).to receive(:receive_damage)
    game.attack(player2)
    game.attack(player1)
    game.attack(player2)
    expect(game.turn_count).to eq 4
  end
end
