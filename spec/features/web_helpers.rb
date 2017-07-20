def sign_in_and_play
  visit('/')

  fill_in('player_one_name', with: 'Name One')
  fill_in('player_two_name', with: 'Name Two')
  find_button('Submit').click
end


def attack_multiples
  click_button 'Attack'
  click_button 'Return'
end
