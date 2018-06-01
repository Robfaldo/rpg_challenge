# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature 'Attack players: ' do
  scenario 'p1 can attack p2 and recieve a confirmation' do
    # Setup
    sign_in_and_play
    # Exercises
    click_button('ATTACK!')
    # Verification
    expect(page).to have_content "landed!"
  end

  scenario 'attack landed isnt shown before p1 attacks' do
    # Setup
    sign_in_and_play
    # Verification
    expect(page).not_to have_content "landed!"
  end
end
