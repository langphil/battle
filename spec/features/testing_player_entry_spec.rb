feature 'Testing player name entry' do
  scenario 'Can accept two players names via a form and submit it' do
    visit('/')
    fill_in('Player One', with: 'Name One')
    fill_in('Player Two', with: 'Name Two')
    find_button('Submit').click
  end
end
