feature 'View hit comfirmation' do
  scenario 'confimr player 2 hit' do
    sign_in_and_play
    visit('/play')
    find_button('Attack').click
    visit('/attack')
  end
end
