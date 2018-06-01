# As two Players,
# So we can continue our game of Battle,
# We want to switch turns

feature 'switch turns' do
  # scenario 'before player 1 attacks' do
  #   sign_in_and_play
  #   expect(page).to have_content "player 1's turn!"
  # end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button("ATTACK!")
    expect(page).to have_content "player 2's turn!"
  end

  scenario 'after player 2 attacks' do
    sign_in_and_play
    click_button("ATTACK!")
    click_button("ATTACK!")
    expect(page).to have_content "player 1's turn!"
  end
end
