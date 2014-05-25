require 'spec_helper'

feature 'Poll management' do
  scenario 'update a new poll', js: true do
    poll = create(:poll)
    visit root_path
    click_button 'Edit'

    # fill_in 'Question', with: 'Updated question'
    # click_button 'Submit'
    # expect(page).to have_content 'Updated question'
  end
end
