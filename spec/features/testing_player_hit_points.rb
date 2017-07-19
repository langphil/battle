feature 'View hit points' do
  scenario 'see player 2 hit points' do
    visit('/play')
    find('.hit', text: '60')
  end
end
