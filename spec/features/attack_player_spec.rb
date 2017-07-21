feature 'View hit points' do
  scenario 'see player 2 hit points' do
    sign_in_and_play
    visit('/play')
    find('.hit-two', text: '100')
  end
end

feature 'Player 1 loses HP after an attack' do
  scenario 'Player 1s HP goes down' do
    allow_any_instance_of(Player).to receive(:receive_damage).and_return('90')
    sign_in_and_play
    2.times do
      click_button 'Attack'
      click_button 'Return'
    end
    find('.hit-one')
  end
end
