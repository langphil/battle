feature 'deduct HP after an attack' do
  scenario 'when hit a player should lose HP points' do
    sign_in_and_play

    visit('play')
    find_button('Attack').click

    visit('/attack')
    find('.hit-confirm', text: 'Name One Attacked Name Two')
    find_button('return').click

    visit('/play')
    find('hit', text: '50')
  end
end
