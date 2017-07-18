feature 'Testing infrastructutre' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Enter Player Names'
  end
end
