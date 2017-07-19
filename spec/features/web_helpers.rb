def sign_in_and_play
  visit('/')
  
  fill_in('player_one_name', with: 'Name One')
  fill_in('player_two_name', with: 'Name Two')
  find_button('Submit').click
end
