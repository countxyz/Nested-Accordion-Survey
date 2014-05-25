require 'spec_helper'

feature 'Poll management' do
  scenario 'creates a new poll', js: true do
    visit root_path
    click_button 'New Poll' 

    fill_in 'Name', with: 'Poll Me'
    fill_in 'Question', with: 'Question Here'
    click_button 'Create Poll'
    expect(page).to have_content 'Poll Me'
  end
end
