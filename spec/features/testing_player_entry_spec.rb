feature 'Testing player name entry' do
  scenario 'Can accept two players names via a form and submit it' do
    visit('/')
    fill_in('player_one', with: 'Name One')
    fill_in('player_two', with: 'Name Two')
    find_button('Submit').click
    visit('/play')
    page.has_content?('Name One')
    page.has_content?('Name Two')
  end
end
