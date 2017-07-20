feature 'deliver game over page' do
  scenario 'on zero HP points, give a game over message' do
    sign_in_and_play
    19.times { attack_multiples }
    expect(page).to have_content 'Name Two loses'
  end
end
