
# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'see hitpoints' do
  scenario 'player 2s hitpoints are visible' do
    sign_in_and_play
    expect(find('progress')['max']).to eq "100"
  end

end
