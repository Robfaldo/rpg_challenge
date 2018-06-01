require 'game'

describe Game do
  context 'When attacking'do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

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
end
