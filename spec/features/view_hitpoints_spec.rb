
feature 'Hitpoints: ' do

  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points
  scenario 'player 2s hitpoints are visible' do
    sign_in_and_play
    expect(find('progress')['max']).to eq "100"
  end

  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP by 10
  scenario 'When p1 attacks p2, p2s health reduces by 10' do
    # Setup
    sign_in_and_play
    # Exercise
    click_button('ATTACK!')
    # Verification
    expect(find('progress')['value']).to eq "90"
  end
end
