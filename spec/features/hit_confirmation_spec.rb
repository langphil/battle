feature 'View hit comfirmation' do
  scenario 'player two can be attacked' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Name One Attacked Name Two'
  end
end

feature 'Attacking Player 1' do
  scenario 'Player 2 can attack Player 1' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Return'
    click_button 'Attack'
    expect(page).to have_content 'Name Two Attacked Name One'
  end
end
