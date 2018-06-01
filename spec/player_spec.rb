describe Player do
  it 'returns the name' do
    player = Player.new("Player 1")
    expect(player.name).to eq "Player 1"
  end

  # context 'When attacked' do
  #   it 'it removes 10hp when attacked once' do
  #     player1 = Player.new("Player 1")
  #     player2 = Player.new("Player 2")
  #     player1.attack(player2)
  #     expect(player2.hp).to eq 90
  #   end
  #
  #   it 'it removes 20hp when attacked twice' do
  #     player1 = Player.new("Player 1")
  #     player2 = Player.new("Player 2")
  #     player1.attack(player2)
  #     player1.attack(player2)
  #     expect(player2.hp).to eq 80
  #   end
  # end
end
