# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our Names and seeing them

feature 'start flight' do
	scenario 'print player name' do
		visit("/")
		fill_in('player_1_name',with: 'player 1')
		fill_in('player_2_name',with: 'player 2')
		click_button('Submit')
		expect(page).to have_content 'player 1 vs player 2'
	end
end
