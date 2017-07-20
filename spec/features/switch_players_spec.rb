feature 'Switch players after a turn' do
  scenario 'After a player attacks, switch to the other players turn' do
    sign_in_and_play
    expect(page).to have_content "Name One's turn"
  end

  scenario 'After a player attacks, switch to the other players turn' do
    sign_in_and_play
    click_button('Attack')
    click_button('Return')
    expect(page).to have_content "Name Two's turn"
  end
end
