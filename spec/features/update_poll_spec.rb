require 'spec_helper'

feature 'Poll management' do
  scenario 'update a new poll', js: true do
    poll = create(:poll)
    visit root_path
    click_button 'Edit'

    fill_form(:poll, { name: 'Polls are Really Awesome'})
    click_button 'Submit'
    expect(page).to have_content 'Polls are Really Awesome'
  end
end
