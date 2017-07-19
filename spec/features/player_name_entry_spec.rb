feature 'Testing player name entry' do
  scenario 'accepts a player name via and form and submits' do
    sign_in_and_play

    visit('/play')

    page.has_content?('Name One')
    page.has_content?('Name Two')
  end
end
