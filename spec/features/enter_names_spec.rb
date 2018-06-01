# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our Names and seeing them

feature 'Start fight: ' do
	scenario 'print player name' do
		sign_in_and_play
		save_and_open_page
		expect(page).to have_content 'player 1 vs player 2'
	end
end
