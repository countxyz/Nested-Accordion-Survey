require 'spec_helper'

feature 'Poll management' do
  scenario 'delete a poll', js: true do
    poll = create(:poll)
    visit root_path
    
    click_button 'Delete'
    confirm_dialog

    expect(page).to_not have_content 'Polls are Awesome'
  end
end
